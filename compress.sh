#!/bin/bash


# comprime css
yui-compressor --type css -o static/css/Bccr.Fva.ClienteInterno.Firmador-1.0.6-min.css static/css/Bccr.Fva.ClienteInterno.Firmador-1.0.6.css

# comprime js
uglifyjs static/js/Bccr.Fva.ClienteInterno.Firmador-1.0.6.js  -o static/js/Bccr.Fva.ClienteInterno.Firmador-1.0.6-min.js
uglifyjs static/js/autenticador-1.0.6.js --output static/js/autenticador-1.0.6-min.js
uglifyjs static/js/firma-verificacion-1.0.6.js --output static/js/firma-verificacion-1.0.6-min.js


sed -i -e "s/\/static\/css\/Bccr\.Fva\.ClienteInterno\.Firmador-1\.0\.6\.css/\/static\/css\/Bccr\.Fva\.ClienteInterno\.Firmador-1\.0\.6-min\.css/g"  static/js/firma-verificacion-1.0.6-min.js 

sed -i -e "s/\/static\/css\/Bccr\.Fva\.ClienteInterno\.Firmador-1\.0\.6\.css/\/static\/css\/Bccr\.Fva\.ClienteInterno\.Firmador-1\.0\.6-min\.css/g"  static/js/autenticador-1.0.6-min.js
