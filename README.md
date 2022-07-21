# Cliente de administración de firma y autenticación para navegadores web

### :warning: El código aquí fue creado por el BCCR, y se realizó algunas adaptaciones menores, pero este repositorio es mantenido voluntariamente y no necesariamente está actualizado con las políticas del imagen.

Este cliente en javascript, permite mostrar los díalogos de autenticación y firma digital para cualquier plataforma web que desee soportar firma digital de Costa Rica.

Este cliente:

* Incluye jquery 1.9.1.
* Es independiente del lenguaje de la plataforma que lo utilice.
* Utiliza JSON para comunicación.
* Puede combinarse con aplicaciones web.
* Incluye su propia imágen por lo que no se ve afectado por otros frameworks de CSS.



# Modo de uso

 :exclamation: Es recomentable leer nuestra [wiki](https://github.com/luisza/dfva_html/wiki) donde se explica mejor el funcionamiento de este repositorio

Para poder usarse primero asegurese que la carpeta **static** es servida por su servidor de contenido, depúes en el encabezado de la página la página donde desea usarla debe agregar lo siguiente.

```html
    <script src="/static/js/jquery-1.9.1.min.js"></script>
    <script src="/static/js/Bccr.Fva.ClienteInterno.Firmador-1.0.6-min.js" type="text/javascript"></script>
```

**Nota:** Puede cambiar las rutas según su conveniencia, solo asegúrese que los archivos son correctamente servidos.

**Nota:** Las url descritas en los botones pueden ser cambiadas a conveniencia, con el fin proveer las funcionalidades necesarias.

## Autenticación 

Agregue en el encabezado después de los enlaces agregados anteriormente lo siguiente:

```html
<script src="/static/js/autenticador-1.0.6-min.js"></script>
```

Agregue un botón 

```html
 <button id="BotonDeAutenticar"
 data-fva = "true" 
 data-url="/autenticar" 
 data-dominio = "http://localhost:8000" 
 data-successurl = "http://localhost:8000/autenticado"
 data-parautenticarse = "al Sitio de Verificaci&oacute;n" 
 data-mensajedeerror = "No se pudo realizar la autenticaci&oacute;n en el sitio de verificaci&oacute;n."
 type="button" class="botonVerificacion botonVerificacion-Inicio">Ingresar</button>
```

En data **data-url** se enviará vía post la cédula de individuo que desea autenticarse.  Vea la documentación completa para saber cómo responder a las peticiones.

Resultado.

![Flujo autenticación](https://github.com/luisza/dfva_html/raw/master/pantallazos/Dialogo_autenticaci%C3%B3n.png)


## Firma

Agregue en el encabezado después de los enlaces agregados anteriormente lo siguiente:

```html
<script src="/static/js/firma-verificacion-1.0.6-min.js"></script>
```

Agregue un botón 

```html
<div>
 <button id="BotonDeFirmar"
 data-fva = "true" 
 data-url="/firmar"
 data-dominio = "http://localhost:8000" 
 data-successurl = "http://localhost:8000/firma_ok"
 data-mensajedeerror = "No se pudo realizar la firma en el sitio."
 type="button" class="botonVerificacion botonVerificacion-Inicio">Firmar</button>
</div>
```

Se realiza un POST a **data-url** pero sin parámetros, por lo que corresponde a la URL identificar el objeto que se desea firmar.  Vea la documentación completa para saber cómo responder a las apeticiones.

Resultado

![Flujo de firma](https://github.com/luisza/dfva_html/raw/master/pantallazos/Dialogo_firma.png)
