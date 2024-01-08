#!/bin/bash
clear
echo "#################################"
echo "#      TCP vs UDP               #"
echo "#################################"
echo ""
sleep 1.2
echo "Protocolos TCP y UDP. 
los protocolos TCP estan orientados a la conexion, a traves de internet. Garantiza el envio de datos y tambien
reporta los errores.
UDP solamente envia datos sin comprobar que el destinatario los reciba. No se garantiza que los paquetes lleguen a destinatario "
echo "Una parte IMPORTANTE del protocolo TCP es el Three-way Handshake, un procedimiento utilizado para establecer conexion entre dos dispositivos. "
sleep 3
echo "Rango de puertos 0 >> 65535"
sleep 0.8
figlet Escaneo Puertos TCP vs UDP
echo "Puertos mas comunes:
TCP
---
21 --> FTP
22 --> SSH
23 --> Telnet (protocolo antiguo para conectarse a servidores)
25 --> SMTP (simple mail transfer protocol) envio de emails
53 --> DNS
80 --> HTTP 
443 --> HTTPS
110 --> POP3
139, 445 --> SMB, protocolos internos de empresas
143 --> IMAP

UDP
---
53 --> DNS
69 --> TFTP
161 --> SNMP"
figlet Clases de subred
echo "Tipos de clases de subred:
Clase A: 255.x.0.0
Clase B: 255.255.x.0
Clase C: 255.255.255.x

(la x es donde esta la variacion)
"
sleep 2.5
echo "La conversión de CIDR a rango de direcciones IP implica determinar las direcciones IP individuales que están incluidas en ese bloque CIDR. Por ejemplo, si tienes la notación CIDR "192.168.1.0/24", representa las direcciones IP desde "192.168.1.0" hasta "192.168.1.255". El "/24" indica que los primeros 24 bits de la dirección IP son parte de la red, mientras que los últimos 8 bits están disponibles para asignar direcciones individuales.

Si tienes una herramienta específica llamada "CIDR to IP range", podría ser una utilidad que realiza esta conversión de notación CIDR a un rango de direcciones IP específicas, mostrándote todas las direcciones IP individuales incluidas en ese bloque CIDR. Esto es útil para comprender y trabajar con las direcciones IP en un formato más detallado."

figlet CIDR to IP range
echo "tool recomendada >> https://www.ipaddressguide.com/cidr"
sleep 5
