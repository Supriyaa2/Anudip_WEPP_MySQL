#Student Enrollment System
#Tasks: 1. Create a set course_A containing students 'Alice', 'Bob', 'Charlie'.
course_A = {"Alice", "Bob", "Charlie"}

print("Course A Students:", course_A)

'''
OUTPUT
Course A Students: {'Alice', 'Bob', 'Charlie'}
'''

#2. Create another set course_B containing students 'Charlie', 'David', 'Eva'.

course_B = {"Charlie", "David", "Eva"}

print("Course B Students:", course_B)

'''
OUTPUT
Course B Students: {'David', 'Charlie', 'Eva'}
'''

#3. Find out which students are enrolled in both course_A and course_B.
course_A = {"Alice", "Bob", "Charlie"}
course_B = {"Charlie", "David", "Eva"}

both = course_A.intersection(course_B)

print("Students enrolled in both courses:", both)

'''
OUTPUT
Students enrolled in both courses: {'Charlie'}
'''

#4. List all students who are enrolled in either course_A or course_B.
course_A = {"Alice", "Bob", "Charlie"}
course_B = {"Charlie", "David", "Eva"}

all_students = course_A.union(course_B)


print("Students enrolled in either course:", all_students)

'''
OUTPUT
Students enrolled in either course: {'Alice', 'Eva', 'Bob', 'David', 'Charlie'}

'''

#5. Identify students who are enrolled in course_A but not in course_B.
course_A = {"Alice", "Bob", "Charlie"}
course_B = {"Charlie", "David", "Eva"}

only_A = course_A.difference(course_B)

print("Students only in Course A:", only_A)

'''
OUTPUT
Students only in Course A: {'Bob', 'Alice'}
'''

# 6. Determine the students who are enrolled in only one course.
course_A = {"Alice", "Bob", "Charlie"}
course_B = {"Charlie", "David", "Eva"}

only_one = course_A.symmetric_difference(course_B)

print("Students enrolled in only one course:", only_one)

'''
OUTPUT
Students enrolled in only one course: {'David', 'Eva', 'Bob', 'Alice'}
'''





















