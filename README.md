Writing a unit test

class FileSystem
  attr_reader :storage

  def initialize
    @storage = []
  end

  def store(file)
    storage.push(file)
  end
end

Write a unit test to cover the store method. What do I want to test? Given an input (a file) how does the method change the state of our programme? Take a moment to consider this.

I want to test the @storage array 1) has been changed. 2) Contains the new file name or file id 3) Test that the storage array size has increased by 1 size. 
The input is the file 
The output is the array with the file in it: expect(file_system.storage).to include(file)

Where it says include: what are the other things it can say? (e.g. .to respond_to() / .to equal() 