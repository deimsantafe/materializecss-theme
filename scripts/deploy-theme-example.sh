#!/bin/bash

#automatiza la compilacion y el deploy del archivo scss a css entre proyectos utilizando node-sass

#ruta para el archivo compilado
RUTA_ORIGEN="/home/lucas/maquinaVirtualPhp5.6/www/html/materializecss-theme/src/node_modules/materialize-css/sass/"
ARCHIVO_SCSS="custom-materialize.scss"
#ruta del proyecto destino
RUTA_DESTINO="/home/lucas/maquinaVirtualPhp5.6/www/html/materializecss-theme/src/dist/theme-materializecss-deim-v1.0/"
ARCHIVO_CSS="custom-materialize.css"
#deploy en el bundle de temas
RUTA_DESTINO_BUNDLE="/home/lucas/maquinaVirtualPhp5.6/www/html/bundle-stg-theme-bundle/STG/ThemeBundle/Resources/public/css/"

RUTA_DESTINO_PROYECTO="/home/lucas/maquinaVirtualPhp5.6/www/html/app-with-themebundle/vendor/stgbundle/theme-bundle/STG/ThemeBundle/Resources/public/css/"
RUTA_CACHE_PROYECTO="/home/lucas/maquinaVirtualPhp5.6/www/html/app-with-themebundle/var/cache/dev"

cd ${RUTA_ORIGEN}
node-sass ${ARCHIVO_SCSS} ${ARCHIVO_CSS}
cp ${ARCHIVO_CSS} ${RUTA_DESTINO}${ARCHIVO_CSS}
cp ${ARCHIVO_SCSS} ${RUTA_DESTINO}'scss/'${ARCHIVO_SCSS}

echo "moviendo al proyecto bundle que lo utiliza:"
cp ${ARCHIVO_CSS} ${RUTA_DESTINO_BUNDLE}${ARCHIVO_CSS}

echo "moviendo al proyecto que utilizaría  bundle"
cp ${ARCHIVO_CSS} ${RUTA_DESTINO_PROYECTO}${ARCHIVO_CSS}

#borrando cache de symfony
rm -fr ${RUTA_CACHE_PROYECTO}

echo "Archivo generado: "${RUTA_DESTINO}${ARCHIVO_CSS}
