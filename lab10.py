#Lab1: Library Management System
# 1. Class Definitions: ● BookClass: ○ Instance Variables:

# Book Class
class Book:
    total_books = 0  # Class Variable

    def __init__(self, title, author, isbn):
        self.title = title
        self.author = author
        self.isbn = isbn
        Book.total_books += 1

    def display(self):
        print(f"Title : {self.title}")
        print(f"Author: {self.author.name}")
        print(f"ISBN  : {self.isbn}")


# Author Class
class Author:
    total_authors = 0  # Class Variable

    def __init__(self, name, birthdate):
        self.name = name
        self.birthdate = birthdate
        self.books = []  # List of books written by the author
        Author.total_authors += 1

    def add_book(self, book):
        self.books.append(book)

    def display(self):
        print(f"Author Name : {self.name}")
        print(f"Birthdate   : {self.birthdate}")
        print("Books Written:")
        for book in self.books:
            print(f"- {book.title}")


# Library Class
class Library:
    library_count = 0  # Class Variable

    def __init__(self):
        self.books = []      # List of books
        self.authors = []    # List of authors
        Library.library_count += 1

    def add_book(self, book):
        self.books.append(book)

    def add_author(self, author):
        self.authors.append(author)

    def display_books(self):
        print("\nLibrary Books:")
        for book in self.books:
            print(f"{book.title} by {book.author.name}")

    def display_authors(self):
        print("\nLibrary Authors:")
        for author in self.authors:
            print(author.name)


# ---------------- Main Program ----------------

# Create Authors
author1 = Author("J.K. Rowling", "31-07-1965")
author2 = Author("George Orwell", "25-06-1903")

# Create Books
book1 = Book("Harry Potter", author1, "9780747532743")
book2 = Book("Animal Farm", author2, "9780451526342")
book3 = Book("1984", author2, "9780451524935")

# Assign books to authors
author1.add_book(book1)
author2.add_book(book2)
author2.add_book(book3)

# Create Library
library = Library()

# Add authors to library
library.add_author(author1)
library.add_author(author2)

# Add books to library
library.add_book(book1)
library.add_book(book2)
library.add_book(book3)

# Display Information
library.display_books()

print()
author1.display()

print()
author2.display()

# Display Class Variables
print("\nTotal Books   :", Book.total_books)
print("Total Authors :", Author.total_authors)
print("Total Libraries:", Library.library_count)


'''
OUTPUT
Library Books:
Harry Potter by J.K. Rowling
Animal Farm by George Orwell
1984 by George Orwell

Author Name : J.K. Rowling
Birthdate   : 31-07-1965
Books Written:
- Harry Potter

Author Name : George Orwell
Birthdate   : 25-06-1903
Books Written:
- Animal Farm
- 1984

Total Books   : 3
Total Authors : 2
Total Libraries: 1
'''

#Qno2 Initialization:

#1. Book Class Initialization
class Book:
    total_books = 0   # Class Variable

    def __init__(self, title, author, isbn):
        self.title = title
        self.author = author
        self.isbn = isbn

        # Increment class variable
        Book.total_books += 1


#2. Author Class Initialization
        
class Author:
    total_authors = 0   # Class Variable

    def __init__(self, name, birthdate):
        self.name = name
        self.birthdate = birthdate
        self.books = []    # Empty list to store books

        # Increment class variable
        Author.total_authors += 1



#3. Library Class Initialization
        

class Library:
    library_count = 0   # Class Variable

    def __init__(self):
        self.books = []      # Empty list for books
        self.authors = []    # Empty list for authors

        # Increment class variable
        Library.library_count += 1

author1 = Author("J.K. Rowling", "31-07-1965")
book1 = Book("Harry Potter", author1, "9780747532743")
library1 = Library()

print(Book.total_books)       
print(Author.total_authors) 
print(Library.library_count)

'''
OUTPUT
1
1
1
'''


#Qno3  Instance Methods:
#1. Book Class Instance Methods
class Book:
    total_books = 0

    def __init__(self, title, author, isbn):
        self.title = title
        self.author = author
        self.isbn = isbn
        Book.total_books += 1

    def update_title(self, new_title):
        self.title = new_title

    def update_author(self, new_author):
        self.author = new_author

#2. Author Class Instance Methods
class Author:
    total_authors = 0

    def __init__(self, name, birthdate):
        self.name = name
        self.birthdate = birthdate
        self.books = []
        Author.total_authors += 1

    def add_book(self, book):
        self.books.append(book)

    def remove_book(self, isbn):
        for book in self.books:
            if book.isbn == isbn:
                self.books.remove(book)
                print("Book removed successfully.")
                return
        print("Book not found.")



#3. Library Class Instance Methods
        
class Library:
    library_count = 0

    def __init__(self):
        self.books = []
        self.authors = []
        Library.library_count += 1

    def add_book(self, book):
        self.books.append(book)

    def remove_book(self, isbn):
        for book in self.books:
            if book.isbn == isbn:
                self.books.remove(book)
                print("Book removed from library.")
                return
        print("Book not found.")

    def list_books(self):
        if len(self.books) == 0:
            print("No books available.")
        else:
            print("Books in Library:")
            for book in self.books:
                print("Title :", book.title)
                print("Author:", book.author.name)
                print("ISBN  :", book.isbn)
                print("----------------")

#Main Program

# Create Author
author1 = Author("Ramesh Kumar", "15-08-1980")

# Create Books
book1 = Book("Python Programming", author1, "B101")
book2 = Book("Data Structures", author1, "B102")

# Add books to author
author1.add_book(book1)
author1.add_book(book2)

# Create Library
library = Library()

# Add books to library
library.add_book(book1)
library.add_book(book2)

# Display books
print("Books in Library:")
library.list_books()

# Remove one book
library.remove_book("B101")

# Display books after removal
print("\nAfter Removing Book:")
library.list_books()
                

'''
OUTPUT
Books in Library:
Books in Library:
Title : Python Programming
Author: Ramesh Kumar
ISBN  : B101
----------------
Title : Data Structures
Author: Ramesh Kumar
ISBN  : B102
----------------
Book removed from library.

After Removing Book:
Books in Library:
Title : Data Structures
Author: Ramesh Kumar
ISBN  : B102
'''


#Qn04 Method Overloading (Simulated):
#Book Class – Simulated Method Overloading
class Book:
    total_books = 0

    def __init__(self, title, author, isbn):
        self.title = title
        self.author = author
        self.isbn = isbn
        Book.total_books += 1

    # Simulated Method Overloading
    def display_info(self, user_type="reader"):
        if user_type == "librarian":
            print("Book Title :", self.title)
            print("Author     :", self.author.name)
            print("ISBN       :", self.isbn)
        elif user_type == "reader":
            print("Book Title :", self.title)
            print("Author     :", self.author.name)
        else:
            print("Invalid User Type")


#Example Program

class Author:
    def __init__(self, name, birthdate):
        self.name = name
        self.birthdate = birthdate

author1 = Author("Ramesh Kumar", "15-08-1980")

book1 = Book("Python Programming", author1, "B101")

print("Reader View:")
book1.display_info()

print("\nLibrarian View:")
book1.display_info("librarian")

'''
OUTPUT
Reader View:
Book Title : Python Programming
Author     : Ramesh Kumar

Librarian View:
Book Title : Python Programming
Author     : Ramesh Kumar
ISBN       : B101
'''


#Qno5 Static Methods:

#1. Book Class
class Book:
    total_books = 0

    def __init__(self, title, author, isbn):
        self.title = title
        self.author = author
        self.isbn = isbn
        Book.total_books += 1

    @staticmethod
    def book_info():
        print("Books contain title, author, and ISBN information.")


#2. Author Class
        
class Author:
    total_authors = 0

    def __init__(self, name, birthdate):
        self.name = name
        self.birthdate = birthdate
        self.books = []
        Author.total_authors += 1

    @staticmethod
    def author_info():
        print("Authors write books and have a name and birthdate.")
        


#3. Library Class
        

class Library:
    library_count = 0

    def __init__(self):
        self.books = []
        self.authors = []
        Library.library_count += 1

    @staticmethod
    def library_info():
        print("A library stores books and author information.")



#Main Program
        
# Calling Static Methods

Book.book_info()

Author.author_info()

Library.library_info()

'''
OUTPUT
Books contain title, author, and ISBN information.
Authors write books and have a name and birthdate.
A library stores books and author information.
'''

#Qno6 Class Methods: 

# ---------------- Book Class ----------------
class Book:
    total_books = 0

    def __init__(self, title, author, isbn):
        self.title = title
        self.author = author
        self.isbn = isbn
        Book.total_books += 1

    # Instance Methods
    def update_title(self, new_title):
        self.title = new_title

    def update_author(self, new_author):
        self.author = new_author

    # Method Overloading (Simulated)
    def display_info(self, user_type="reader"):
        if user_type == "reader":
            print("Title :", self.title)
            print("Author:", self.author.name)
        elif user_type == "librarian":
            print("Title :", self.title)
            print("Author:", self.author.name)
            print("ISBN  :", self.isbn)
        else:
            print("Invalid User Type")

    # Static Method
    @staticmethod
    def book_info():
        print("Books contain title, author and ISBN details.")

    # Class Method
    @classmethod
    def get_total_books(cls):
        return cls.total_books



class Author:
    total_authors = 0

    def __init__(self, name, birthdate):
        self.name = name
        self.birthdate = birthdate
        self.books = []
        Author.total_authors += 1

    # Instance Methods
    def add_book(self, book):
        self.books.append(book)

    def remove_book(self, isbn):
        for book in self.books:
            if book.isbn == isbn:
                self.books.remove(book)
                print("Book Removed")
                return
        print("Book Not Found")

    # Static Method
    @staticmethod
    def author_info():
        print("Authors write books.")

    # Class Method
    @classmethod
    def get_total_authors(cls):
        return cls.total_authors


# ---------------- Library Class ----------------
class Library:
    library_count = 0

    def __init__(self):
        self.books = []
        self.authors = []
        Library.library_count += 1

    # Instance Methods
    def add_book(self, book):
        self.books.append(book)

    def remove_book(self, isbn):
        for book in self.books:
            if book.isbn == isbn:
                self.books.remove(book)
                print("Book Removed from Library")
                return
        print("Book Not Found")

    def list_books(self):
        print("\nBooks in Library")
        for book in self.books:
            print(book.title, "-", book.author.name)

    def add_author(self, author):
        self.authors.append(author)

    # Static Method
    @staticmethod
    def library_info():
        print("Library stores books and authors.")

    # Class Method
    @classmethod
    def get_library_count(cls):
        return cls.library_count


# ---------------- Test Program ----------------

# Create Authors
author1 = Author("Amit Sharma", "10-05-1980")
author2 = Author("Neha Verma", "15-08-1985")

# Create Books
book1 = Book("Python Basics", author1, "B101")
book2 = Book("Database Systems", author2, "B102")

# Add books to authors
author1.add_book(book1)
author2.add_book(book2)

# Create Library
library = Library()

# Add authors
library.add_author(author1)
library.add_author(author2)

# Add books
library.add_book(book1)
library.add_book(book2)

# Display Books
library.list_books()

# Remove Book
library.remove_book("B102")

# Display Again
library.list_books()

# Method Overloading Simulation
print("\nReader View")
book1.display_info()

print("\nLibrarian View")
book1.display_info("librarian")

# Static Methods
print("\nStatic Methods")
Book.book_info()
Author.author_info()
Library.library_info()

# Class Methods
print("\nClass Methods")
print("Total Books :", Book.get_total_books())
print("Total Authors :", Author.get_total_authors())
print("Total Libraries :", Library.get_library_count())

'''
OUTPUT

Books in Library
Python Basics - Amit Sharma
Database Systems - Neha Verma
Book Removed from Library

Books in Library
Python Basics - Amit Sharma

Reader View
Title : Python Basics
Author: Amit Sharma

Librarian View
Title : Python Basics
Author: Amit Sharma
ISBN  : B101

Static Methods
Books contain title, author and ISBN details.
Authors write books.
Library stores books and authors.

Class Methods
Total Books : 2
Total Authors : 2
Total Libraries : 1

'''
































