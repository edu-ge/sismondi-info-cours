age = int(input("Quel est votre age? "))
if age < 18:
   message = "Vos parents doivent signer vos excuses."
else:
   message = "Vous pouvez signer vos excuses."
print(message)