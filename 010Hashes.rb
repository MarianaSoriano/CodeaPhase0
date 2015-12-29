string_array = ["This", "is", "an", "array", "of", "strings"]
puts string_array

pets = Hash.new
pets["Bloch"] = "dog"#to add key-value pairs to empty hash
puts pets["Bloch"]

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
print s[0][1]
s.each {|sub_array| puts sub_array}

restaurant_menu = {
  "noodles" => 4,
  "soup" => 3,
  "salad" => 2
}

restaurant_menu.each do |item, price|
  puts "#{item}: #{price}"
end

secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |hero, real_identity|
    puts "#{hero}: #{real_identity}"
end

names = {
    "dad" => "Mario",
    "mom" => "Paula",
    "sister" => "Carmen"
}

names = Hash.new
names["dad"] = "Mario"
names["mom"] = "Paula"
names["sister"] = "Carmen"

lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each do |name, order|
    puts order
end

colors = {"blue" => 3, "green" => 1, "red" => 2}
colors = colors.sort_by do |color, count|
  count
end
puts colors.reverse!

fruit = {
  "apple" => 2,
  "banana" => 3,
  "cherry" => 5
}

fruit.each do |name, count|
  puts name + " " + count.to_s#'.to_s' convert the value from a number to a string
end

my_hash = {"pet" => "Bloch"}
matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}
matz.each do |key, value|
    puts value, matz[value]
end

creatures = { "weasels" => 0,
  "puppies" => 6,
  "platypuses" => 3,
  "canaries" => 1,
  "Heffalumps" => 7,
  "Tiggers" => 1
}
no_nil_hash = Hash.new("What's the point?")

# movies = {
#     :The_Nightmare_before_Christmas => "5",
#     :Edward_Scissorhands => "5",
#     :Corpse_Bride => "5",
#     :Beetlejuice => "5",
#     :Alice_in_Wonderland => "1",
#     :Charlie_and_the_chocolate_factory => "2",
# }
movies = {
    The_Nightmare_before_Christmas: "5",
    Edward_Scissorhands: "5",
    Corpse_Bride: "5",
    Beetlejuice: "5",
    Alice_in_Wonderland: "1",
    Charlie_and_the_chocolate_factory: "2",
}
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!
good_movies = movie_ratings.select {|title, rating| rating > 3}
puts good_movies

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!
movie_ratings.each_key {|k| puts k}#How can I sort them in alphabetical order '.sort' method doesn't work

personal_data = Hash.new

personal_data["name"] = "Mariana Soriano" #[key] = "value"
personal_data["email"] = "mariana.soriano.licona@gmail.com"
personal_data["genre"] = "Female"
