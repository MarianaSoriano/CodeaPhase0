# Proc objects are blocks of code that have been bound to a set of local variables.
# Once bound, the code may be called in different contexts and still access those variables.
cube = Proc.new { |x| x ** 3 }
p (1..5).to_a.collect!(&cube)#(The '.collect!' and '.map!' methods do the exact same thing.)

multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end
p (1..100).to_a.select(&multiples_of_3)#& Method: Set Intersection—Returns a new array containing elements common to the two arrays, with no duplicates

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new {|x| x.floor}#rounds a float (a number with a decimal) down to the nearest integer
p ints = floats.collect(&round_down)
