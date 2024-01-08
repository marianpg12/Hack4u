#!/usr/bin/python3

from pwn import *
import time

# Configurar el nivel de registro
context.log_level = 'info'

# Crear una barra de progreso
with log.progress("Realizando tarea") as p:
    for i in range(10):
        # Simular una tarea
        log.progress("Fuerza Bruta")
        time.sleep(0.8)

        # Actualizar la barra de progreso
        p.status(f"Completado {i + 1}/10")

# Imprimir un mensaje de información
log.info("Tarea completada exitosamente.")

