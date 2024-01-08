#!/bin/bash
clear
echo "###################################"
echo "#       CMS: WordPress            #"
echo "###################################"
echo ""
banner WordPress
sleep 2
echo "Wpscan Api token >> https://wpscan.com/api/"
sleep 1.2
echo "wpscan --url https://theshuttergrind.com/ -e vp,u --api-token="nClcPU2iRn1pXsvaXwBlPXPc6mGjpm030wkkhpeY6ls" --random-user-agent"
figlet Wpscan - Api Token
echo "Aplicando el API token, podemos ver las vulnerabilidades en un reporte mas completo y detectar que plugins y demas servicios de Wordpress pueden ser atacados..."
sleep 1.2
echo ""
echo "El reporte de Wpscan, con API token, nos da resultados detallados. Vemos que esta habilitado xmlrpc.php"
figlet xmlrpc.php
sleep 2
echo "hacemos consulta >> curl -s -X POST https://theshuttergrind.com/xmlrpc.php ... y obtenemos respuesta"
echo "Si buscamos vulnerabilidades xmlrpc.php, nos da que enviando un xml:
<?xml version=1.0 encoding=utf-8?> 
<methodCall> 
<methodName>system.listMethods</methodName> 
<params></params> 
</methodCall> 
"
sleep 1.2
echo "Podemos encontrar la vulnerabilidad >> curl -s -X POST https://theshuttergrind.com/xmlrpc.php -d@file.xml"
sleep 2

