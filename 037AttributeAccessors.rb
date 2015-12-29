class Person
  attr_accessor :first_name, :last_name, :email
# An object's instance variables are its attributes,
# the things that generally distinguish it from other objects of the same class.
# It is important to be able to write and read these attributes; doing so requires writing methods called attribute accessors.
# The two kinds of accessors are writers and readers.

  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end
  def name
    @first_name + " " + @last_name
  end
  def information
  	puts "Name: " + @first_name + " " + @last_name
  	puts "Email: " + @email
  end
end
person = Person.new('Daniel', 'Garcia', 'daniel@mail.com')
p person.name
p person.information
