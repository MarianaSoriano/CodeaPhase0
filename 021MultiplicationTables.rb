# Crea el método multiplication_tables que reciba como parámetro un número
# entero e imprima las tablas de multiplicar desde el 1 hasta el número que le pasen.
def multiplication_tables(num)
  num_array = (1..10).to_a
  for i in num_array
   if i <= num
   	 num_array.map do |x|
   	 	print "#{x * i}\t" #tabulador
   	 end
   	 puts #salto de línea
   end
  end
end
multiplication_tables(4)
