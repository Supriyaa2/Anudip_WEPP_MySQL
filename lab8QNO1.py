#1. Python program to calculate the mean of a dictionary values
#test_dict = {"A" : 6, "B" : 9, "C" : 5, "D" : 7, "E" : 4}


test_dict = {"A": 6, "B": 9, "C": 5, "D": 7, "E": 4}

total = 0
count = 0

for value in test_dict.values():
    total = total + value
    count = count + 1

mean = total / count

print("Mean =", mean)

'''
OUTPUT
Mean = 6.2
'''
