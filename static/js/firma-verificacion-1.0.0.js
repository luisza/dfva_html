(function ($) {
	 $(document).ready(function(){
		 var btns=$(document).find('[data-fva="true"]');
		 $.each(btns, function(index, btn){
			 btn=$(btn);
			
			 var dominio=btn.data('dominio');
			 if(dominio==undefined){
				 dominio=location.protocol+"//"+location.host;
			 }
			 
			 var ayuda=btn.data('img_ayuda');
			 if (ayuda == undefined){
				 ayuda=dominio + "/static/Imagenes/Ayuda.png";
			 }
			 var url_consulta_firma=btn.data('urlconsultafirma');
			 if(url_consulta_firma==undefined){
				 url_consulta_firma=dominio+"/Firmador/ConsulteLaFirma";
			 }
			 var img_autenticador=btn.data('img_autenticador');
			 if(img_autenticador==undefined){
				img_autenticador = dominio+"/static/Imagenes/Autenticador.png";
			 }
			 var img_firma=btn.data('img_firma');
			 if(img_firma==undefined){
				 img_firma = dominio+"/static/Imagenes/Firmador.png";
			 }
			 
			 var url_css=btn.data('urlcss');
			 if(url_css==undefined){
				 url_css=dominio + "/static/css/Bccr.Fva.ClienteInterno.Firmador-1.0.1.css";
			 }
			 
			 var laConfiguracion = {
					 UrlParaSolicitar: btn.data('url'),
		             DominioDelSitio: dominio,

		             MensajeDeError:btn.data('mensajedeerror'),
		             IdDelBotonDeFirmar: btn.attr('id'),
		             images:{
		            	 ayuda: ayuda,
		            	 autenticador: img_autenticador,
		            	 firma: img_firma
		             },
		             urlconsultafirma: url_consulta_firma,
		             urlcss: url_css,
		             FirmaRealizada: function(){
		            	 btn.fadeOut();
		            	 window.location=btn.data('successurl');
		             },
		             FirmaNoRealizada: function(){},
		             ObtengaLosDatosParaSolicitarLaFirma: function(){}
		         };     
			 FvaFirmador(laConfiguracion);     
		 });
	 });
})($);
