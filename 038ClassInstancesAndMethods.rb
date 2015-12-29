class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end
  def area #Area = w × h
	   @width * @height
  end
  def perimeter #Perimeter = 2(w+h)
  	(@width + @height) * 2
  end
  def diagonal #The Diagonal is the square root of (width squared + height squared): Diagonal "d" = √(w2 + h2)
    Math.sqrt((@width ** 2) + (@height ** 2))
  end
  def square?
    width == height ? true : false
  end
end

rectangle = Rectangle.new(20, 10)
puts rectangle.area == 200
puts rectangle.perimeter == 60
puts rectangle.diagonal == 22.360679774997898
puts rectangle.square? == false

rectangle2 = Rectangle.new(10, 10)
puts rectangle2.area == 100
puts rectangle2.perimeter == 40
puts rectangle2.diagonal == 14.142135623730951
puts rectangle2.square? == true

class Machine
  @@users = {} #Class Variable

  def initialize(username, password)
    @username = username #Instance Variable
    @password = password
    @@users[username] = password #Class Variable
    @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end

  def Machine.get_users
    @@users #Class Variable
  end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

puts "Users: #{Machine.get_users}"
