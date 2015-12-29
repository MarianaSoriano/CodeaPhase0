def total_between_age(age_array, min_age, max_age)
	range_array = []
	age_array.each {|n| range_array << n if n >= min_age && n <= max_age}
	range_array.count #or .length
end

p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4
