#!/usr/bin/python3

import os
import time
os.system("clear")
print("Explicacion: Para resolver este problema, podemos recorrer el array de números y encontrar los números faltantes. La idea es iterar sobre la secuencia de números y verificar si hay un hueco entre dos números consecutivos. Si hay un hueco, entonces todos los números en ese rango son faltantes")
time.sleep(2)


def find_missing_numbers(arr):
    if not arr:
        return []
    print("""
    # start --> arr[0] , stop --> arr[-1] , step --> +1    
    #                        start   stop    step
    """)
    arr.sort()
    return [i for i in range(arr[0], arr[-1] + 1) if i not in arr]
 

# [-5,-2,-3,1,-8,5] //missing numbers are: -7,-6,-4,-1,0,2,3,4

arr = [-5,-2,-3,1,-8, 5]
arr1 = find_missing_numbers(arr)
os.system("figlet Resultado")
print("Array principal:", arr)
print("# El resultado de los faltantes es: ", arr1)
time.sleep(2)




