# materializecss-theme
Repositorio con un tema customizado, por la Secretaría de Tecnologías para la Gestión de la Provincia de Santa Fe, basado en materializecss utilizando el código fuente *.scss


Instructivo:
==========

1- Instalar nodejs (preferentemente con el gestor de versiones: https://github.com/creationix/nvm)

2- Ejecutar npm install para instalar las dependencias del proyecto (si las requiere).

3- Dentro de la carpeta scss/ se encuentra el archivo custom.scss sobre este se realiza el import de todos los componentes de  necesarios y requeridos por materializecss. Se realiza el override o extend de las variables y estilos scss (Ref: http://archives.materializecss.com/0.100.2/sass.html ). 

4- Luego utilizando node-sass custom.scss custom.css (para instalar node-sass: https://www.npmjs.com/package/node-sass ) vamos generando el theme de bootstrap customizado.-

5- Distribuciones publicadas en la carpeta src/dist/theme-materializecss-deim-v1.0/

6- Lo utiliza como dependencia el https://github.com/deimsantafe/bundle-stg-theme-bundle/tree/2.x

Referencias:
==========

- Frameworks utilizado: http://archives.materializecss.com/0.100.2/
- Pautas de diseño definidas por: https://material.io/


