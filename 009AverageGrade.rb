def average_grade(array_grade)
    result = 0 #Sum starts in 0
	array_grade.each do |grade|
		result = result + grade #Each loop the value of 'result' changes
	end
	division = result / array_grade.length.to_f
end

puts average_grade([8, 8, 10, 4, 5, 7])

p average_grade([8, 8, 7, 6, 9]) == 7.6
p average_grade([5, 5, 5, 8, 8, 7, 7, 7]) == 6.5
