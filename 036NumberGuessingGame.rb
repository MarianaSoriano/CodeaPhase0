class NumberGuessingGame
	def initialize
		@aleatory_num = rand(0..9)
	end

	def guess(num)
		# p "Write a number (an integer please)"
		# @num = gets.chomp
		p "Too low" if num < @aleatory_num
		p "You got it!" if num == @aleatory_num
		p "Too high" if num > @aleatory_num
	end
end

game = NumberGuessingGame.new


p game.guess(5) == "Too low"

# p game.guess(8) == "Too high"

# p game.guess(7) == "Too high"

# p game.guess(6) == "You got it!"

p "What would you like to do now? Write 'new' to continue and 'exit' to finish"
response = gets.chomp
case response
	when "new" then game = NumberGuessingGame.new
	when "exit" then p "Bye!"
end
