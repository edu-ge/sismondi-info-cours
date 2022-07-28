h = 10.0

n = 0

while (h > 1.5):
  h = h - 1.0/3.0 * h
  if h < 1.5:
    n = n + 1
    break
  
  n = n + 2

print("La balle est passée ",n," fois devant la fenêtre")
