u0 = input("proposer un nombre : ")
print(u0)

un = u0

while (un != 1):
  if un % 2 == 0 :
    un = un // 2
  else:
    un = 3 * un +1

  print(un)