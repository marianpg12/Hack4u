#!/usr/bin/python3

# tramitar peticiones
import requests
# pwn tools...para agregarle color, barras de descargas...
from pwn import *
import sys
import signal
import time
import string
# Declaro Funciones

def makeSQLI():
    print('[+] SQL Inyectando...')
    time.sleep(1.5)
    sys.exit(1)
    return

# Globales
caracteres = string.printable

print(caracteres)
makeSQLI()



