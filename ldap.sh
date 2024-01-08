#!/bin/bash
clear
echo "#######################################"
echo "#          Que es LDAP?               #"
echo "#######################################"
echo ""
sleep 1.2
banner LDAP
echo "LDAP se utiliza comúnmente para acceder y mantener información de directorios, como información de usuarios, grupos, dispositivos y otros recursos en una red.
LDAP utiliza el puerto 389 por defecto para las conexiones no cifradas y el puerto 636 para conexiones cifradas (LDAP sobre TLS/SSL)."
sleep 2
echo "Bien una vez clonado el github >> https://github.com/motikan2010/LDAP-Injection-Vuln-App
Creamos la imagen en docker siguiendo el paso a paso:
Introduction
Run LDAP Server
>> docker run -p 389:389 --name openldap-container --detach osixia/openldap:1.2.2
Run LDAP Client
>> docker build -t ldap-client-container .
>> docker run -dit --link openldap-container -p 8888:80 ldap-client-container"
sleep 2
figlet Abriendo-LDAP
echo "Abriendo LDAP: http://localhost:8888
Vamos a ver dos campos input, admin & password"
echo "Abrimos el burpsuite + Foxy proxy. Ingresamos usuario y contrasena. Interceptamos y tenemos:
POST / HTTP/1.1
Host: localhost:8888
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:109.0) Gecko/20100101 Firefox/115.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Referer: http://localhost:8888/
Content-Type: application/x-www-form-urlencoded
Content-Length: 52
Origin: http://localhost:8888
DNT: 1
Connection: close
Cookie: PHPSESSID=28effba0a0fc218b3ddd13cc23cde3ba
Upgrade-Insecure-Requests: 1
Sec-Fetch-Dest: document
Sec-Fetch-Mode: navigate
Sec-Fetch-Site: same-origin
Sec-Fetch-User: ?1
user_id=admin&password=testing&login=1&submit=Submit"
sleep 3
