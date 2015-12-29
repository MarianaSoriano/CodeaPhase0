#variables that start with colons are symbols
menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}

puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []
strings.each do |s| symbols.push(s.to_sym)#Use '.intern' (internalize) it's also possible for convering a string into a symbol
end
print symbols
