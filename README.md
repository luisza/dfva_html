# Cliente de administración de firma y autenticación para navegadores web

Este cliente en javascript, permite mostrar los díalogos de autenticación y firma digital para cualquier plataforma web que desee soportar firma digital de Costa Rica.

# Modo de uso

Para poder usarse primero asegurese que la carpeta **static** es servida por su servidor de contenido, depúes en el encabezado de la página la página donde desea usarla debe agregar lo siguiente.

```
    <link href="/static/css/firma.css" rel="stylesheet" type="text/css" />
    <link href="/static/css/verificacion.css" rel="stylesheet" type="text/css" />
    <script src="/static/js/jquery-1.9.1.min.js"></script>
    <script src="/static/js/Bccr.Fva.ClienteInterno.Firmador-1.0.1.js" type="text/javascript"></script>
```

**Nota:** Puede cambiar las rutas según su conveniencia, solo asegúrese que los archivos son correctamente servidos.

**Nota:** Las url descritas en los botones pueden ser cambiadas a conveniencia, con el fin proveer las funcionalidades necesarias.

## Autenticación 

Agregue en el encabezado después de los enlaces agregados anteriormente lo siguiente:

```
<script src="/static/js/autenticador-1.0.0.js"></script>
```

Agregue un botón 

```
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

## Firma

Agregue en el encabezado después de los enlaces agregados anteriormente lo siguiente:

```
<script src="/static/js/firma-verificacion-1.0.0.js"></script>
```

Agregue un botón 

```
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

