#2.Swap Two Numbers

''' FIRST METHOD'''

# Take the first number as input
a = int(input("Enter first number: "))

# Take the second number as input
b = int(input("Enter second number: "))

# Swap the values of a and b
a, b = b, a

# Display the swapped values
print("After swapping:")
print("First number =", a)
print("Second number =", b)



'''OUTPUT
Enter first number: 60
Enter second number: 70
After swapping:
First number = 70
Second number = 60
'''
