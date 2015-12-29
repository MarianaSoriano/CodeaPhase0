def fizzbuzz(min, max)
	fizzbuzz_array = []
	number_array = (min..max).map { |i| i }
	number_array.each do |num|
		fizz = num % 3 == 0 #Multiple of 3
		buzz = num % 5 == 0 #Multiple of 5
		fizzbuzz = fizz && buzz #Multiple of 3 and 5
		if fizzbuzz == true
	  		fizzbuzz_array.push("FizzBuzz")
		elsif fizz == true
	  		fizzbuzz_array << "Fizz"
	  		 # shovel operator (<<) works like '.push' method
	  		 # to fill fizzbuzz_array
	  		 # << is an alias of concat()
	  	elsif buzz == true
	  		fizzbuzz_array << "Buzz"
	  	else
	  		fizzbuzz_array << num
		end
	end
	fizzbuzz_array
end
p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]
