#!/bin/bash


# comprime css
yui-compressor --type css -o static/css/Bccr.Fva.ClienteInterno.Firmador-1.0.2-min.css static/css/Bccr.Fva.ClienteInterno.Firmador-1.0.2.css

# comprime js
yui-compressor --type js -o static/js/Bccr.Fva.ClienteInterno.Firmador-1.0.3-min.js static/js/Bccr.Fva.ClienteInterno.Firmador-1.0.3.js
yui-compressor --type js -o static/js/autenticador-1.0.3-min.js static/js/autenticador-1.0.3.js
yui-compressor --type js -o  static/js/firma-verificacion-1.0.3-min.js static/js/firma-verificacion-1.0.3.js

sed -i -e "s/\/static\/css\/Bccr\.Fva\.ClienteInterno\.Firmador-1\.0\.2\.css/\/static\/css\/Bccr\.Fva\.ClienteInterno\.Firmador-1\.0\.2-min\.css/g"  static/js/firma-verificacion-1.0.3-min.js 

sed -i -e "s/\/static\/css\/Bccr\.Fva\.ClienteInterno\.Firmador-1\.0\.2\.css/\/static\/css\/Bccr\.Fva\.ClienteInterno\.Firmador-1\.0\.2-min\.css/g"  static/js/autenticador-1.0.3-min.js
