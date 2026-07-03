#1. Write a program to find even and odd numbers from the list


list1 = [1, 2, 3, 4, 5, 6, 7]

print("Even Numbers:")
for i in list1:
    if i % 2 == 0:
        print(i)

print("Odd Numbers:")
for i in list1:
    if i % 2 != 0:
        print(i)



#2. Write a program to find the largest number from the list
list1 = [20, 35, 45, 22, 68]

largest = list1[0]

for i in list1:
    if i > largest:
        largest = i

print("Largest number is:", largest)


#3. Write a program to find the 2nd largest element

list1 = [20, 35, 45, 22, 68]

list1.sort()

print("Second Largest Element:", list1[-2])

#4. Write a program to accept an element from the user and check whether it exists in the list
list1 = [10, 20, 30, 40, 50]

num = int(input("Enter the element to search: "))

if num in list1:
    print("Element exists in the list.")
else:
    print("Element does not exist in the list.")












