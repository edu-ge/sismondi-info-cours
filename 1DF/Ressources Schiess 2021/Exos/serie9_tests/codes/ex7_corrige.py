a = float(input("entrer le coefficient a de l'equation ax^2 + bx + c = 0 : "))
b = float(input("entrer le coefficient b de l'equation ax^2 + bx + c = 0 : "))
c = float(input("entrer le coefficient c de l'equation ax^2 + bx + c = 0 : "))

delta = b**2 - 4 * a * c

if delta < 0 :
  print("L'equation n'a pas de solution")
elif delta == 0:
  x = (-b)/(2*a)
  print("L'equation possède une solution : x = ",x)
else:
  x1 = (-b-delta**0.5)/(2*a)
  x2 = (-b+delta**0.5)/(2*a)
  print("L'equation possède deux solutions : x1 = ",x1, " et x2=",x2)