def toBinary(a):
  l,m=[],[]
  for i in a:
    l.append(ord(i))
  for i in l:
    print(bin(i))
    b = bin(i)[2:]
    b = (8-len(b))*'0' + b
    m.append(b)
  return m

msg = "Cet exercice est un peu fastidieux."
print(msg) 
print(toBinary(msg))