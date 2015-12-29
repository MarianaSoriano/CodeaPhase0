def longest(strings)
	words_array = strings.each.sort_by { |word| word.length }
	# words_array.last
	words_array[-1]
end
print longest(['cat', 'dog', 'elephant', 'giraffe'])
p longest(['gato', 'perro', 'elefante', 'girafa']) == "elefante"
p longest(['verde', 'rojo', 'negro', 'morado']) == "morado"

def shortest(strings)
	words_array = strings.each.sort_by { |word| word.length }
	words_array.first
	# words_array[0]
end
puts shortest(['cat', 'dog', 'elephant', 'giraffe'])
puts shortest(['green', 'red', 'black', 'purple'])
puts shortest(['gato', 'perro', 'elefante', 'girafa']) == "gato"
puts shortest(['verde', 'rojo', 'negro', 'morado']) == "rojo"
