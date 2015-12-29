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


# Regresa un arreglo con los Strings en las posiciones 1, 3, 5, 7, etc
def odd_indexed(array)
	new_array = array.each_with_index do |n, index|
		 if index.even?
		 	p n
	end
	end
end
p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]


# Regresa todos los Strings que tienen una longitud mayor a 4 caracteres.
def long_strings(array)
	new_array = array.select { |e| if e.length > 4 == true
	 e
	end }
	new_array
end
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]


# Regresa el primer String que empieza con la letra 'h'.
def start_with_h(array)
	array.select{|word| p word if word.chr == "h"}
end
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"


# Regresa el mismo Array de String que recibe pero ahora todos los Strings tienen la primera letra mayúscula.
def capitalize_array(array)
	array.map {|name| name.capitalize}
end
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
