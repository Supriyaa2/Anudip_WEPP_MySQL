#2.Write a Python script to concatenate the following dictionaries to create a new one.

#Sample Dictionary : dic1={1:10, 2:20} dic2={3:30, 4:40} dic3={5:50,6:60}

 #Expected Result : {1: 10, 2: 20, 3: 30, 4: 40, 5: 50, 6: 60}



# Concatenate dictionaries

dic1 = {1: 10, 2: 20}
dic2 = {3: 30, 4: 40}
dic3 = {5: 50, 6: 60}

new_dict = {}

new_dict.update(dic1)
new_dict.update(dic2)
new_dict.update(dic3)

print(new_dict)

'''
OUTPUT
{1: 10, 2: 20, 3: 30, 4: 40, 5: 50, 6: 60}

'''
