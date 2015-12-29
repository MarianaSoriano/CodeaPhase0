movies = {
    TheNightmareBeforeChristmas: 4,
    EdwardScissorHands: 5,
    CorpseBride: 5,
    Beetlejuice: 5,
    AliceInWonderLand: 1,
    CharlieAndTheChocolateFactory: 2,
    }

# movies = { #This works but isn't a good practice, is better to declare symbol and after convert it into string
#     "The Nightmare before Christmas": 4,
#     "Edward Scissorhands": 5,
#     "Corpse Bride": 5,
#     "Beetlejuice": 5,
#     "Alice in Wonderland": 1,
#     "Charlie and the chocolate factory": 2,
#     }

puts "What would you like to do?"
puts "Type 'add' to add a movie."
puts "Type 'update' to update a movie."
puts "Type 'display' to display all movies."
puts "Type 'delete' to delete a movie."
choice = gets.chomp
case choice
	when "add"
		puts "What movie do you like to add?"
		title = gets.chomp
		if movies[title.to_sym].nil? #It checks if a movie title doesn't exist in the movies hash
			puts "Assign the movie a rating from 0 to 5"
			rating = gets.chomp
			movies[title.to_sym] = rating.to_i #Add movie/rating pair to the movies hash
			puts "#{title} has been added with a rating of #{rating}"
		else
			puts "That movie already exists! Its rating is #{movies[title.to_sym]}"
		end
	when "update"
		puts "What movie rating do you like update? Write its title"
		title = gets.chomp
		if movies[title.to_sym].nil?
			puts "That movie doesn't exist in database"
		else
			puts "What's the new rating? (Type a number 0 to 5)"
			rating = gets.chomp
			movies[title.to_sym] = rating.to_i
			puts "Rating of #{title} has been updated. New rating is #{movies[title.to_sym]}"
		end
	when "display"
		movies.each {|title, rating| puts "Movie: #{title} Rating: #{rating}"}
	when "delete"
		puts "What movie do you like to remove?"
		title = gets.chomp
		if movies[title.to_sym].nil?
			puts "That movie doesn't exist in database"
		else
			movies.delete(title)
			puts "'#{title}' has been removed from database"
		end
	else
		puts "Error! Please, try again."
end

p movies #To see the changes of "database"
