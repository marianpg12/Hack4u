#!/bin/bash
clear
echo "##################################"
echo "#   Subnetting: Mascara de red   #"
echo "##################################"
echo ""
banner Subnetting
sleep 1.8
echo "Que es Subnetting? Es basicamente dividir una red grande en subredes mas pequenas"
echo "Se divide en la parte de red y la del host"
echo "Tenemos por ejemplo una IP: 192.168.1.37 y mascara de red (subnetting) 255.255.255.0 (cada octeto lo integran 8 bits). Aplicando la mascara de red, los primeros 3 octetos identifican la red y los ultimos 8 bits identifican al host)"
figlet Que hace Mascara de red?
sleep 2
echo "La máscara de subred ayuda a los routers y dispositivos de red a determinar si una dirección IP pertenece a la misma red local o si debe ser enviada a través de la puerta de enlace (gateway) para alcanzar destinos fuera de la red local. En resumen, la máscara de subred divide la dirección IP en parte de red y parte de host, lo que facilita la administración y enrutamiento de las redes"
sleep 1.8
banner TIPS
echo "Algunos TIPS de mascara de red:"
figlet "obase -->  binarios"
figlet "ibase --> decimales"
echo "172.14.15.16/17 >>
      convertido a binario:
      echo 'obase=2;172' | bc  ... con esto saco el valor 172 en binario."
sleep 0.8

echo "10101100.00001110.00001111.00010000 (172.14.15.16/17)"
echo "11111111.11111111.10000000.00000000 --> aplico mascara red" 
echo " Para sacar numeracion mascara red --> echo 'ibase=2;10000000' | bc  --> lo que daria 128"
sleep 1.2

echo "tool recomendada --> https://blogs.jodies.de/ipcalc"
echo ">> ipcalc 192.168.1.14/24"
sleep 1.5
ipcalc 192.168.1.14/24


