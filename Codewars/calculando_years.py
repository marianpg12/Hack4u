#!/usr/bin/python3
import time
import os

os.system("clear")
os.system("figlet Calculando years...")
time.sleep(2)

def calculate_age(year_of_birth, current_year):
    age = current_year - year_of_birth
    if age == 0:
        return "You were born this very year!"
    elif age > 0:
        return f"You are {age} {'year' if age == 1 else 'years'} old."
    else:
        return f"You will be born in {-age} {'year' if -age == 1 else 'years'}."


year_of_birth = int(input("Ingrese fecha nacimiento: "))
current_year = 2023
print(calculate_age(year_of_birth, current_year))

