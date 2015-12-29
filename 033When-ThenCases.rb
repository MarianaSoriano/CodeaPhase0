movies = {
    TheNightmareBeforeChristmas: 4,
    EdwardScissorHands: 5,
    CorpseBride: 5,
    Beetlejuice: 5,
    AliceInWonderLand: 1,
    CharlieAndTheChocolateFactory: 2,
    }
puts "What would you like to do?"
puts "Type 'add' to add a movie."
puts "Type 'update' to update a movie."
puts "Type 'display' to display all movies."
puts "Type 'delete' to delete a movie."
choice = gets.chomp
case choice
  when "add" then puts "What movie do you like to add?"
		title = gets.chomp
		puts movies[title.to_sym].nil? ? "Assign the movie a rating from 0 to 5" : "That movie already exists! Its rating is #{movies[title.to_sym]}"
    rating = gets.chomp
    puts "#{title} has been added with a rating of #{rating}"
		movies[title.to_sym] = rating.to_i
  when "update" then puts "What movie rating do you like update? Write its title"
	  title = gets.chomp
		puts movies[title.to_sym].nil? ? "That movie doesn't exist in database" : "What's the new rating? (Type a number 0 to 5)"
		rating = gets.chomp
		movies[title.to_sym] = rating.to_i
		puts "Rating of #{title} has been updated. New rating is #{movies[title.to_sym]}"
  when "display" then puts movies.each {|title, rating| puts "Movie: #{title} Rating: #{rating}"}
  when "delete" then puts "What movie do you like to remove?"
    title = gets.chomp
		puts movies[title.to_sym].nil? ? "That movie doesn't exist in database" : "'#{title}' has been removed from database"
		movies.delete(title)
	else puts "Error! Please, try again."
end
