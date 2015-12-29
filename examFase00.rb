# ¿Qué tipo de datos son cada una de las siguientes variables?
# ¿De que clase es cada uno y como lo puedes comprobar?
v = 5 #Integer
p "This is an integer" if v.integer? == true

w = "hola" #String
p "This is a string" if w.is_a?(String) == true

x = 5.0 #Float
p "This is a float" if x.is_a?(Float) == true

y = [1, 2, 3] #Array
p "This is an array" if y.is_a?(Array) == true

z = {a: 1, b: 2, c: 3} #Hash
p "This is a hash" if z.is_a?(Hash) == true


# Obtén el valor del segundo elemento de la lista `fruits` utilizando código. Y cambia el tercer valor de la lista por una fruta diferente.
fruits = ["apple", "orange", "peach"]
p fruits[1]
fruits[2].replace("strawberry")
p fruits

# Obtén el último elemento de la lista `foods`.
foods = ["hamburger", "donut", "pizza", "chilaquiles"]
p foods[-1]

# Añade un elemento más al final de la lista `gadgets`.
gadgets = ["smartphone", "laptop", "tablet"]
gadgets.insert(-1, "smartwatch")
p gadgets


# Crea la variable my_hash e inicialízala a un Hash vacío.
my_hash = Hash.new

# Crea la variable translations e inicialízala a un Hash con 3 palabras en inglés con su correspondiente traducción a español.
translations = {"useful" => "útil", "awful" => "desagradable", "precious" => "valioso"}

# A la variable translations del ejercicio anterior agrégale una palabra más.
translations["horrid"] = "horroroso"

# # Lee el value de alguna de las palabras de translations y asígnalo a la variable spanish_word.
spanish_word = translations["horrid"]


# Crea el método number_sign que nos diga si un número es negativo o positivo. Si el número es negativo regresa el string "Negative", y si es positivo "Positive".
def number_sign(num)
	puts num < 0 ? "Negative" : "Positive"
end
p number_sign(9)
p number_sign(-9)

# Crea el método print_double que reciba un arreglo de números, e imprima el doble de cada número.
def print_double(num_array)
	num_array.each {|n| p n + n}
end
print_double([1, 2, 3])


# Crea el método double_array muy parecido al ejercicio anterior, con la diferencia que no imprime los número sino que regresa un nuevo arreglo con los elementos multiplicados por 2.
def double_array(num_array)
  new_array = []
  num_array.collect {|n| new_array.push(n * 2) }
  new_array
end
p double_array([5, 6, 7])

# Crea el método double_array muy parecido al ejercicio anterior, con la diferencia que no imprime los número sino que regresa un nuevo arreglo con los elementos multiplicados por 2.
def double_array(num_array)
  num_array.map {|n| n * 2 }
end
p double_array([5, 6, 7])


# Crea el método odd_or_even, que recibe dos argumentos: min y max. Regresa un arreglo intercambiando cada elemento del rango por el string "par" o "non" según lo que son.
# ruby odd_or_even(5, 10) => ["non", "par", "non", "par", "non", "par"]
def odd_or_even(min, max)
  array = []
  range_num = (min..max).to_a
  range_num.each {|n| array.push(n.even? ? "par" : "non") }
  p array
end
odd_or_even(5, 10)


# Crea una clase Dog y agrega el código necesario para hacer pasar las pruebas.
# Necesitaras ciertos getters y setters; crealos manualmente sin utilizar
# attr_readers, attr_writer o attr_accessor methods
class Dog
	def initialize(name, date_of_birth, breed)
    @name = name
    @date_of_birth = date_of_birth
    @breed = breed
  end
  def name #reader
    @name
  end
  def name=(str) #writer Important! Without space between method's name, equals sign and parenthesis
    @name = str
  end
  def date_of_birth
    @date_of_birth
  end
  def breed #reader
    @breed
  end
  def breed=(str) #writer
    @breed = str
  end
end
# Pruebas
fido = Dog.new("Fido","02/02/2002","Bulldog")
p fido.name == "Fido"
p fido.date_of_birth == "02/02/2002"
fido.name = "Snoopy"
fido.breed = "Beagle"
p fido.name == "Snoopy"
p fido.breed == "Beagle"


# Crea la clase rectangle, con los atributos height y width. Y crea un método que calcule el perímetro
# y otro método que calcule el área del rectángulo. Permite que se puedan leer y modificar
# los valores de height y width después de su creación.

class Rectangle
	attr_accessor :width, :height
	def initialize(width, height)
	    @width = width
	    @height = height
 	end
	def perimeter
		(@width + @height) * 2
	end
	def area
		@width * @height
	end
end

rectangle01 = Rectangle.new(40, 20)
puts rectangle01.area
puts rectangle01.perimeter

# Crea la clase Playlist que para inicializarla recibe 2 argumentos: name (nombre del playlist) y songs (lista de canciones).
# Crea una forma para poder leer el nombre del Playlist.
# Crea el método number_of_songs que regresa el número de canciones que contiene el Playlist.
# Crea el método add_song que agrega una canción a la lista.
# Crea el método next_song que regresa la siguiente canción del Playlist. Para esto necesitarás llevar control de cuál es la canción actual.
# Si el playlist se encuentra en la última canción debe de volver a iniciar.
# Al crear una nueva instancia de Playlist la canción actual por default debería ser la primera canción de la lista que le pasen.

class Playlist
  attr_accessor :name, :songs #Reader and Writer at the same time
  attr_reader :current, :next_song
  def initialize(name, songs)
    @name = name
    @songs = songs
    @current = @songs[0]
  end

  def number_of_songs
    @songs.count
  end

  def add_song(title)
    @songs << title
  end

  def next_song
    @songs.each_with_index do |song, index|
      if song == @songs.last
        return @current = @songs.first
      elsif song == @current 
        return @current = @songs[index + 1]
      end
    end
  end
end
my_playlist = Playlist.new("Sad_songs", ["I feel so blue", "Dust in the wind", "Hotel California", "Last Kiss"])
p my_playlist.name
p my_playlist.number_of_songs
p my_playlist.add_song("I don't like Mondays")
p my_playlist.number_of_songs
p my_playlist.current
p my_playlist.next_song
