#!/bin/bash
clear
echo "#######################################"
echo "#    Direcciones IP: IPv4 IPv6        #"
echo "#######################################"
echo ""
sleep 1.2
banner IP
echo "Podemos ver la IP de la maquina...
>> hostname -I"
hostname -I
sleep 0.8
echo "Para manejar las direcciones IP y convertirlas a binarios o decimales....
>> echo 192.168.1.37 | bc"
echo "37*24" | bc
sleep 1.2
echo "echo 2^128 | bc"
echo "2^128" | bc
sleep 0.8
echo ">> ifconfig"
echo "inet 192.168.1.37 netmask 255.255.255.0 broadcast 192.168.1.255: Muestra la dirección IP asignada a la interfaz (192.168.1.37), la máscara de red (255.255.255.0), y la dirección de broadcast (192.168.1.255)."
sleep 1.2
echo "que es Mac? es un identificador de 48 bits que corresponde a una tarjeta o dispositivo de red. Con el cmd ifconfig se puede detectar la MAC.
ejemplo: wlp5s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.37  netmask 255.255.255.0  broadcast 192.168.1.255
        inet6 fe80::8563:a17e:d0c0:124e  prefixlen 64  scopeid 0x20<link>
        inet6 2802:8011:2102:f000:ec1:e91e:754:193e  prefixlen 64  scopeid 0x0<global>
        ether cc:3d:82:66:6e:cb  txqueuelen 1000  (Ethernet)"
sleep 0.8
echo "Hay herramientas como MAC changer que pueden manipular la direccion MAC."
echo "Tambien podemos aplicar un scaneo a la red local con ARP-SCAN"
sleep 1.5
banner arp-scan
echo ">> arp-scan -I --localnet"
sleep 1.5
echo ""
echo "Using 192.168.1.0:255.255.255.0 for localnet
192.168.1.1	cc:d4:a1:e5:04:ae	MitraStar Technology Corp.
192.168.1.33	c8:6c:87:fc:3f:04	Zyxel Communications Corporation	Padding=746370056c6f63616c00000c0001085f6169
192.168.1.42	f4:96:34:6b:a3:64	Intel Corporate
192.168.1.52	60:a5:e2:00:02:d0	(Unknown)
192.168.1.61	7c:db:98:1e:68:35	ASKEY COMPUTER CORP
192.168.1.47	2c:05:47:65:24:82	(Unknown)
192.168.1.200	cc:75:e2:48:d8:84	ARRIS Group, Inc.
192.168.1.200	cc:75:e2:48:d8:84	ARRIS Group, Inc. (DUP: 2)
192.168.1.202	a4:43:8c:ae:ed:cc	(Unknown)
192.168.1.202	a4:43:8c:ae:ed:cc	(Unknown) (DUP: 2)"
echo "Podemos ver, despues de realizar un escaneo con >> arp-scan , direcciones IP, MAC address y el modelo"
sleep 0.8
echo "Ahora bien...queremos 'manipular' la MAC .. "
echo ">> macchanger -l | grep 'CISCO'"
echo "De esta forma, se visualizaran todos los modelos de CISCO..."
banner macchanger 
sleep 2

