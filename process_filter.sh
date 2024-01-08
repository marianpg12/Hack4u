#!/bin/bash


# Función para manejar la interrupción de Ctrl+C
function ctrl_c() {
    echo "[+] Saliendo..."
    exit 1
}

trap ctrl_c SIGINT

# Asignamos a la variable todos los procesos
old_process=$(ps -eo user,command)

# Filtramos
cont=0
while [ $cont -lt 3 ]; do
    nuevo_process=$(ps -eo user,command | grep 'marianpg')
    figlet Procesos
    echo "$nuevo_process"
    sleep 1  # Agregamos un pequeño retraso para evitar un bucle infinito intenso
    ((cont++))
done



