a = int(input('rentrer le premier nombre : '))
b = int(input('rentrer le second nombre : '))

max_nb = max(a,b)
min_nb = min(a,b)

''' l'algorithme parcourt tous les multiples du plus grand nombre.
    Il s'arrete lorsque un de ses multiples est aussi un multiple du plus petit  '''
ppmc = max_nb
while (ppmc % min_nb != 0):
  ppmc = ppmc + max_nb

print('Le PPCM de %d et %d est %s'%(a, b , ppmc))
