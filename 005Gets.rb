print "Write your name, please."
def say_hi(name)
	name = gets.chomp
    if name == "Mariana"
    "Welcome back "
    else
    "Hi, #{name}"
    end
end
print say_hi("Mariana")

print "Please write a string"
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
    user_input.gsub!(/s/, "th")#gsub stands for global substitution
else "Nothing to change here"
end

puts "Your string: #{user_input.capitalize}"

# puts "Text to search through: "
# text = gets.chomp
# puts "Word to redact: "
# redact = gets.chomp

# words = text.split(" ")#divide the user's input into individual words.
# #'.split' takes a string and returns an array. Space is delimiter.
# words.each do |word|
#   if word != redact
#     print word + " "
#   else
#     print "REDACTED "
#   end
# end

# letters = ['a', 'b', 'c', 'd']
# letters.each do |letter|
#   print letter
# end

# puts "Text to search through: "
# text = gets.chomp
# puts "Word to redact: "
# redact = gets.chomp
# words = text.split(" ")
# words.each do |word|
#     print word
# end

puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp
words = text.split(" ")
words.each do |word|
    if redact == word
        print "REDACTED "
    else
        print word + " "
    end
end
