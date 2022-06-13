DIVISEUR = 13
a = int(input("entrer un nombre entier : "))
if a % DIVISEUR == 0 :
  print("ce nombre est divisible par ", DIVISEUR)
else:
  print("ce nombre n'est pas divisible par ", DIVISEUR)
