# input two numbers then find larger / smaller number
num1 = int(input("Enter a number: "))
num2 = int(input("Enter another number: "))

print("""
0: larger
1: smaller
""")

choise = bool(int(input("Enter your choise: ")))
if num1 == num2:
	print("Both are equal.")
elif choise:
	if num1 < num2:
		print(str(num1) + " is smaller.")
	else:
		print(str(num2) + " is smaller.")
else:
	if num1 > num2:
		print(str(num1) + " is larger.")
	else:
		print(str(num2) + " is larger.")	

