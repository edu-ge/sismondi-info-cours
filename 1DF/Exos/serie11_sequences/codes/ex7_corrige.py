M = 50

for a in range(1, M):
  for b in range(a, M):
    for c in range(b, M):
      if c**2 == a**2 + b**2:
        print(a,',',b,',',c)