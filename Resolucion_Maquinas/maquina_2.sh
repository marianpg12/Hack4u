#!/bin/bash
clear
echo "###########################################"
echo "#          Maquina 2: Casino Royal        #"
echo "###########################################"
echo ""
figlet Maquina 2 - Casino
echo "Esta maquina la levantamos con VMWare. Al principio teniamos algunos problemas de IP con VirtualBox, por eso utilizamos el VMWare y nos conecta mas facil"
echo "Fase reconocimiento:
ping -c 1 192.168.1.62
vemos respuesta y arrancamos con la fase de escaneo
>> nmap -p- --open -T5 -vvv -n 192.168.1.62 -oG ports.txt"
echo ""
sleep 1.2
echo "# Nmap 7.93 scan initiated Thu Jan  4 12:41:25 2024 as: nmap -p- --open -T5 -vv
       │ v -n -Pn -oG ports_mq2.txt 192.168.1.62
   2   │ # Ports scanned: TCP(65535;1-65535) UDP(0;) SCTP(0;) PROTOCOLS(0;)
   3   │ Host: 192.168.1.62 ()   Status: Up
   4   │ Host: 192.168.1.62 ()   Ports: 21/open/tcp//ftp///, 25/open/tcp//smtp///, 80/op
       │ en/tcp//http///, 8081/open/tcp//blackice-icecap///   Ignored State: closed (655
       │ 31)
   5   │ # Nmap done at Thu Jan  4 12:41:26 2024 -- 1 IP address (1 host up) scanned in 
       │ 1.36 seconds"
echo ""
echo "puertos abiertos: 21 (ftp), 25(smtp), 80(servicio web), 8081"
sleep 1.2
echo ">> nmap -sC -sV -p21,25,80,8081 192.168.1.62 -oN scripts_maq2.txt
hacemos un escaneo con scripts de enumeracion especificos para estos 4 puertos y lo exportamos en formato nmap al archivo scripts_maq2.txt
-----------------------------------------------------------------------
PORT     STATE SERVICE VERSION
21/tcp   open  ftp     vsftpd 2.0.8 or later
25/tcp   open  smtp    Postfix smtpd
|_smtp-commands: casino.localdomain, PIPELINING, SIZE 10240000, VRFY, ETRN, STARTTLS, ENHANCEDSTATUSCODES, 8BITMIME, DSN, SMTPUTF8
|_ssl-date: TLS randomness does not represent time
| ssl-cert: Subject: commonName=casino
| Subject Alternative Name: DNS:casino
| Not valid before: 2018-11-17T20:14:11
|_Not valid after:  2028-11-14T20:14:11
80/tcp   open  http    Apache httpd 2.4.25 ((Debian))
|_http-title: Site doesn't have a title (text/html).
| http-robots.txt: 2 disallowed entries 
|_/cards /kboard
|_http-server-header: Apache/2.4.25 (Debian)
8081/tcp open  http    PHP cli server 5.5 or later
|_http-title: Site doesn't have a title (text/html; charset=UTF-8).
-----------------------------------------------------------------------"
sleep 3
figlet Paso a paso

echo ""
echo "chequeamos en exploit-db.com or searchsploit la version vsftpd 2.0.8
no hay resultados, por ende no podemos explotar por ahi"
sleep 2
echo ""
echo "Bien vamos a un pequeno Fuzzing para el puerto 80, 8081
nmap -sC hhtp-enum -p80,8081 192.168.1.62"
sleep 1.2
echo "
PORT     STATE SERVICE
80/tcp   open  http
| http-enum: 
|   /robots.txt: Robots file
|   /phpmyadmin/: phpMyAdmin
|   /cards/: Potentially interesting folder
|   /includes/: Potentially interesting folder
|_  /install/: Potentially interesting folder
8081/tcp open  blackice-icecap"
sleep 2





