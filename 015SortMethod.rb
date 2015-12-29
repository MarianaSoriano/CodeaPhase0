book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

puts book_1 <=> book_2 #1 first operand is greater than the second: 'W' is greater than 'B'
puts book_1 <=> book_1 #0 first operand equals the second: 'W' equals 'W'
puts book_2 <=> book_1 #-1 first operand is less than the second: 'B' is less than 'W'

puts book_1.length <=> book_2.length #-1 first operand is less than the second

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
puts books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below
puts books.sort! { |firstBook, secondBook| secondBook <=> firstBook }

fruits = ["orange", "apple", "banana", "pear", "grapes"]
puts fruits.sort! { |first_fruit, second_fruit| second_fruit <=> first_fruit }
