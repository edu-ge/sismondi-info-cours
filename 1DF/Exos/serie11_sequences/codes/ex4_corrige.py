ch= input("Chaine à rentrer : ")

ch_asterix = ''

for c in ch:
  ch_asterix = ch_asterix + c +'*'

# On garde tous les caractères sauf le dernier 
ch_asterix = ch_asterix[:-1]

print(ch_asterix)