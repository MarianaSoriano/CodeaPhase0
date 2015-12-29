def mode(array)#The mode is the value that appears the most
	mode_num = []
	frequency = {}
	array.each do |x|
		counter = 0
		array.each do |y|
			if x == y
				counter += 1
			end
		end
		frequency[x] = counter
		print counter
	end
	maximus = frequency.max
	print maximus
end
# max = 2
# value == max
# mode_num << key

p mode([0, 1, 2, 3, 4, 0])
# p mode([1, 2, 2, 3]) == [2]
# p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
# p mode([1, 2, 3]) == [1, 2, 3]
# p mode([0, 1, 2, 3, 4, 0]) == [0]
