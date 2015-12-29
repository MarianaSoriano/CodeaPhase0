def sum_words(first_string, second_string)#'sum_words' is the method and the strings are arguments
    puts "#{first_string}" + "#{second_string}" #This is the code, it returns two concatenated strings
end
sum_words("hola, ", "¿cómo estás?")
sum_words("High! ", "How are you?")
sum_words("Alo! ", "Comment ça va?")

def welcome(name, email, gender)
	"Welcome #{name} your email is #{email} and your gender is #{gender}"
end
puts welcome('Mariana Soriano','mariana.soriano.licona@gmail.com','Female')
