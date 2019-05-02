class Library
  attr_reader :books

  # Initializes books, making books visibile outside of the class Library behaviour

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

  # PURPOSE: The input of .list_books method will output the array of books.
  # TEST: (that the array books reacts to the method list_books)

  def add_book(book)
    books.push(book)
  end

  # PURPOSE: The input of the .add_book method takes an argument of the book.
  # The output is the array with the book title.
  # TEST:

  # Test to see the array 'Books' includes the book. - JUST WRITE PURPOSE
   # NOT TEST YET

  def find_book(title)
    books.select{ |book| book[:title] == title }.first
  end
# PURPOSE: Output the book by searching for the title
# TEST:



  def remove_book(title)
    books.delete_if{ |book| book[:title] == title }
  end

  # PURPOSE: Delete a book title in the array. Return the array without
  # the book title

  def all_books_by_subject(subject)
    books.select{ |book| book[:subject] == subject }
  end
end

# PURPOSE: Iterate through the array to output the book by subject. The array
# will stay the same but the output will be 1 element: the book.
