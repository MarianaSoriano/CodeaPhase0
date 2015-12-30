#Regresa un arreglo con los Strings en las posiciones 1, 3, 5, 7, etc
def odd_indexed(array)
	even_array = []
  array.each_with_index do |n, index|
		 if index.even?
		 	even_array << n
	   end
	end
  even_array
end
p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]

#Regresa todos los Strings que tienen una longitud mayor a 4 caracteres.
def long_strings(array)
	greater4_array = []
  array.collect { |e| greater4_array << e if e.length > 4}
	greater4_array
end
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]

# Regresa el primer String que empieza con la letra 'h'.
def start_with_h(array)
	array.detect{|word| word if word.chr == "h"}
end
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"

# Regresa el mismo Array de String que recibe pero ahora todos los Strings tienen la primera letra mayúscula.
def capitalize_array(array)
	array.map {|name| name.capitalize}
end
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]

#Regresa un Hash donde las keys son las primeras letras de los Strings y los values son todos los Strings que empiezan con esa letra.
def group_by_starting_letter(array)
  array.group_by {|i| i.chr}
end
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}

# Regresa el número de letras 'r' que tiene un string.
def number_of_r(string)
  string.count("r")
end
p number_of_r("ferrocarril") == 4
