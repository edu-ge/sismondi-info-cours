frac_dist = 0 # la fraction de la distance totale déja parcourue
j = 0 # le nombre de jour

dist = 10

# tant que la fraction de la distance parcourue est plus petite que 1
while frac_dist < 1:
    j = j + 1
    frac_dist = frac_dist + 1 / dist # représente quelle fraction de la distance
                                     # totale représente une avance de 1m
    dist = dist + 10
    
print(j)

