age = int(input("Quel est votre age? "))
if age < 18:
   message = "vos parents doivent signer vos excuses"
else:
   message = "vos pouvez signer vos excuses"
print(message)