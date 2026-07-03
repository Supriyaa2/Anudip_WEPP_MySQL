#3. Write a Python function to print the Fibonacci series

# Function to print Fibonacci series
def fibonacci(n):
    a = 0
    b = 1
    print("Fibonacci Series:")

# Print n terms
    for i in range(n):
        print(a, end=" ")
        c = a + b
        a = b
        b = c

# Taking input
terms = int(input("Enter number of terms: "))

# Calling the function
fibonacci(terms)

'''
OUTPUT
Enter number of terms: 10
Fibonacci Series:
0 1 1 2 3 5 8 13 21 34 

'''
