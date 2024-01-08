#!/usr/bin/python3

def how_much_coffee(events):
    activities = ["cw", "cat", "dog", "movie"]
    coffee = 0

    for i in events:
        if i.lower() in activities:
            coffee += 2 if i == i.upper() else 1
            if coffee > 3:
                return "You need extra sleep"

    return coffee

arr = ["cat", "CAT", 'movie']           
print("Cafe/s:? ", how_much_coffee(arr))

