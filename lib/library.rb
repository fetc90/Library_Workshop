class Library
  attr_reader :books

  # The list of books are now visibile outside of the class Library.
  # attr_reader is not a method, it is simply displaying the array.

  def initialize
    @books = [
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
    ]
  end

# 'what is the purpose of this unit of code'?
# Given some input, what output or change in state would you expect to see?

  def list_books
    books
  end

  # PURPOSE: The purpose is to show the list of books.
  # The input of .list_books method will output the array of books.
  # TEST: The array books reacts to the method list_books
  # TEST: The output matches the books

  def add_book(book)
    books.push(book)
  end

  # PURPOSE: To add a new book to the array of books
  # The input of the .add_book method takes an argument of the book.
  # The output is the array with the book title.
  # TEST: The books array reacts to the .add_book method using 1 argument
  # and the array 'Books' includes the book.


  def find_book(title)
    books.select{ |book| book[:title] == title }.first
  end
# PURPOSE: To find a book title
# The input is the .find_book definition
#which takes 1 argument, the title
#The output is the book selected from the array
# TEST:
# The input arguement is included in the array of books


  def remove_book(title)
    books.delete_if{ |book| book[:title] == title }
  end

  # PURPOSE: Delete a book title in the array. Return the array without
  # the book title
  # TEST: Test that title argument that was input is not included in the output array


  def all_books_by_subject(subject)
    books.select{ |book| book[:subject] == subject }
  end
end

# PURPOSE: Show all the books with that subject.
# Iterate through the array to output the book by subject. The array
# will stay the same but the output will be 1 element: the book.
# TEST: The input subject matches the output of books.
