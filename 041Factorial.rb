
# From Enumerable mixin
# Multiply some numbers
def factorial(int)
	(1..int).reduce(1, :*) #'.reduce' method: Combines all elements of enum by applying a binary operation, specified by a block or a symbol that names a method or operator.
end
#Or
# Same using a block
def factorial(int)
	(1..int).inject(1) { |product, n| product * n } #'.inject' method: Does the same that .reduce method
end

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720
