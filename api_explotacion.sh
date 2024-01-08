#!/bin/bash
clear
echo "#####################################################"
echo "#   Explotacion API: Que es? Como proceder?         #"
echo "#####################################################"
echo ""
sleep 2.2
echo "Cuando hablamos del abuso de APIs, a lo que nos referimos es a la explotación de vulnerabilidades en las interfaces de programación de aplicaciones (APIs) que se utilizan para permitir la comunicación y el intercambio de datos entre diferentes aplicaciones y servicios en una red.

Un ejemplo sencillo de API podría ser la integración de Google Maps en una aplicación de transporte. Imagina que una aplicación de transporte necesita mostrar el mapa y la ruta a seguir para que los usuarios puedan ver la ubicación del vehículo y el camino que se va a seguir para llegar a su destino. En lugar de crear su propio mapa, la aplicación podría utilizar la API de Google Maps para mostrar el mapa en su aplicación.

En este ejemplo, la API de Google Maps proporciona una serie de funciones y protocolos que permiten a la aplicación de transporte comunicarse con los servidores de Google y acceder a los datos necesarios para mostrar el mapa y la ruta. La API de Google Maps también maneja la complejidad de mostrar el mapa y la ruta en diferentes dispositivos y navegadores, lo que permite a la aplicación de transporte centrarse en su funcionalidad principal.

Adicionalmente, una de las utilidades que vemos en esta clase es Postman. Postman es una herramienta muy popular utilizada para probar y depurar APIs. Con Postman, los desarrolladores pueden enviar solicitudes a diferentes endpoints y ver las respuestas para verificar que la API está funcionando correctamente. Sin embargo, los atacantes también pueden utilizar Postman para explorar los endpoints de una API en busca de vulnerabilidades y debilidades de seguridad.

Algunos endpoints de una API pueden aceptar diferentes métodos de solicitud, como GET, POST, PUT, DELETE, etc. Los atacantes pueden utilizar herramientas de fuzzing para enviar una gran cantidad de solicitudes a un endpoint en busca de vulnerabilidades. Por ejemplo, un atacante podría enviar solicitudes GET a un endpoint para enumerar todos los recursos disponibles, o enviar solicitudes POST para agregar o modificar datos."
sleep 4
figlet API-Postman
echo "Los desarrolladores pueden utilizar herramientas como Postman para probar la API y detectar posibles vulnerabilidades antes de que sean explotadas por los atacantes.

A continuación, se proporciona el enlace al proyecto de Github que utilizamos para desplegar con Docker el laboratorio vulnerable donde poder practicar la enumeración de APIs:

crAPI: https://github.com/OWASP/crAPI"
sleep 2


