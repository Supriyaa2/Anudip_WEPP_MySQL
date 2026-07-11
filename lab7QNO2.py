#2. Python program to find the largest and smallest number from a list (without built-in functions)
# Find largest and smallest number in a list

list1 = [25, 10, 45, 5, 60, 18]

largest = list1[0]
smallest = list1[0]

for i in list1:
    if i > largest:
        largest = i

    if i < smallest:
        smallest = i

print("Largest number =", largest)
print("Smallest number =", smallest)

'''
OUTPUT

Largest number = 60
Smallest number = 5

'''
