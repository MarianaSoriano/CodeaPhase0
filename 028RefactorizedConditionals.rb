# Type your Ruby code below!
my_name_is_mariana = true
p "I'm Mariana" if my_name_is_mariana

# Type your Ruby code below!

hello = true
p "Hello!" if hello

bye = true
p "Hello!" unless bye

puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4." #Do this if true : Do this if false

bye = true
puts bye ? "Bye" : "Hello"

puts "Hello there!"
greeting = gets.chomp

case greeting
    when "English" then puts "Hello!"
	when "French" then puts "Bonjour!"
	when "German" then puts "Guten Tag!"
    when "Finnish" then puts "Haloo!"
end

def multiple_of_three(n)
  p n % 3 == 0 ? "True" : "False" #print a result of a conditional
end

multiple_of_three(9)

[1, 2, 3].each { |x| puts x * 10 }
# Prints 10, 20, 30 on separate lines

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each {|x| print x if x % 2 == 0}

95.upto(100) { |num| print num, " " }
# Prints 95 96 97 98 99 100

"L".upto("P") {|letter| print letter}

[1, 2, 3].respond_to?(:push) #would return true, since you can call '.push' on an array object
[1, 2, 3].respond_to?(:to_sym) #would return false, since you can't turn an array into a symbol
age = 26
age.respond_to?(:next)

alphabet = ["a", "b", "c"]
alphabet.push("d") # Update me!
p alphabet

caption = "A giraffe surrounded by "
caption += "weezards!" # Me, too!
p caption

alphabet = ["a", "b", "c"]
alphabet << ("d") ##concatenation operator (also known as "the shovel")
p alphabet

caption = "A giraffe surrounded by "
caption << "weezards!" # Me, too!
p caption

age = 26
p "I am " + age + " years old." #It doesn't work
p "I am " << age.to_s << " years old." #or with plus signs "I am " + age.to_s + " years old."

favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end

puts "One is less than two!" if 1 < 2

if 1 < 2
  puts "One is less than two!"
else
  puts "One is not less than two."
end

puts 1 < 2 ? "One is less than two!" : "One is not less than two."

puts "What's your favorite language?"
language = gets.chomp

# if language == "Ruby"
#   puts "Ruby is great for web apps!"
# elsif language == "Python"
#   puts "Python is great for science."
# elsif language == "JavaScript"
#   puts "JavaScript makes websites awesome."
# elsif language == "HTML"
#   puts "HTML is what websites are made of!"
# elsif language == "CSS"
#   puts "CSS makes websites pretty."
# else
#   puts "I don't know that language!"
# end

case language
	when "Ruby" then puts "Ruby is great for web apps!"
	when "Python" then puts "Python is great for science."
	when "JavaScript" then puts "JavaScript makes websites awesome."
	when "HTML" then puts "HTML is what websites are made of!"
	when "CSS" then puts "CSS makes websites pretty."
	else puts "I don't know that language!"
end
