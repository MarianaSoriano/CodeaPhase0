p "string".methods.sort

my_name = 'Mariana'
p my_name.capitalize
p my_name.chr #Returns the first character.
p my_name.empty? #In this case return false
p my_name.sub(/[aeiou]/, '*')
p my_name.gsub(/[aeiou]/, '*')
p my_name.include? "gy" #In this case return false
p my_name.index("n")
p my_name.reverse
p my_name.split(//, 2) #My name in two sylabs. Why in this way?
p my_name.strip #Returns a copy of str with leading and trailing whitespace removed. Nothing to remove here

# method that capitalizes a word
def capitalize(string)
  puts "#{string[0].upcase}#{string[1..-1].downcase}"#downcase is redundant
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"



def first_letters(phrase)
 words = phrase.split(" ")#our delimiter is an space, so we divide the text into words
 first_letter = words.map {|x| x.chr} #Returns a one-character string at the beginning of the string.
end

p first_letters("Hoy es miércoles y hace sol") == ["H", "e", "m", "y", "h", "s"]
p first_letters("tienes ocho candados indios nuevos omega") == ["t", "o", "c", "i", "n", "o"]
