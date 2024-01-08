#/usr/bin/python3

import hashlib
import time
import os
os.system("clear")
print("########################################")
print("#  Utilizando libreria Hashlib         #")
print("########################################")
print("")
os.system("figlet Hashlib")
time.sleep(2)
import hashlib

data = "Hey, Toni!"
hash_object = hashlib.sha256(data.encode())
hashed_data = hash_object.hexdigest()

print(f"Datos originales: {data}")
print(f"Hash SHA-256: {hashed_data}")

# Módulo hashlib en Python:
print("El módulo hashlib en Python proporciona una interfaz común para varios algoritmos de funciones hash, como MD5, SHA-1, SHA-224, SHA-256, SHA-384 y SHA-512, entre otros. Puedes utilizar este módulo para calcular resúmenes hash de datos")
time.sleep(2)

