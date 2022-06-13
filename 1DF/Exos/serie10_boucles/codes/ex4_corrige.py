S0 = float(input("Entrer le capital initial (CHF) : "))
S = S0 # une variable pour décrir le capital au cours du temps
i = float(input("Entrer le taux d'interê en % : "))
a=0
while S < 2*S0 :
  S  = S + (i/100) * S
  a = a + 1
print("Le capital sera doublé après ",a, " ans")