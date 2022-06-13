print("A vous de jouer")
x = int(input("position x : "))
y = int(input("position y : "))
x_bateau = 7
y_bateau = 4

if x_bateau == x and y_bateau == y:
    message = "Coulé"
else:
    if x_bateau == x or y_bateau == y:
        message = "En vue"
    else:
        message = "Dans l'eau"
        
print(message)