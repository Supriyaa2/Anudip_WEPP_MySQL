#1. Write a Python function to calculate the factorial of a number

# Function to calculate factorial
def factorial(num):
    fact = 1

# Multiply numbers from 1 to num
    for i in range(1, num + 1):
        fact = fact * i

    return fact

# Taking input from the user
number = int(input("Enter a number: "))

# Calling the function
result = factorial(number)

# Displaying the result
print("Factorial is:", result)

'''
OUTPUT
Enter a number: 8
Factorial is: 40320
'''
