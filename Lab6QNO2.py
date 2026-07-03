#2. Write a Python function to find whether a number is Prime or Not

# Function to check prime number
def prime(num):

# Prime numbers are greater than 1
    if num <= 1:
        print(num, "is not a Prime Number")
        return

# Check divisibility from 2 to num-1
    for i in range(2, num):
        if num % i == 0:
            print(num, "is not a Prime Number")
            return

    print(num, "is a Prime Number")

# Taking input
number = int(input("Enter a number: "))

# Calling the function
prime(number)


'''
OUTPUT

Enter a number: 4
4 is not a Prime Number

Enter a number: 9
9 is not a Prime Number

'''

