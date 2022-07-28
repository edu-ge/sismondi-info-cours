a = int(input('quelle est la borne inférieur : '))
b = int(input('quelle est la borne inférieur : '))

# la variable somme
S = 0 
print(S, end= '')

for k in range(a,b+1):#le +1 c'est pour avoir b
  if (k % 3 == 0 or k % 5 == 0 ):
    S = S + k
    print(" + ", k, end= '')

print(" = ", S)