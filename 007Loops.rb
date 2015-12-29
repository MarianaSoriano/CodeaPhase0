# for num in 1...16
#     puts num
# end

# It's the same that:

# for num in 1..15 #With two points includes the hieghest number
#     puts num
# end

# i = 0
# loop { #do
#   i += 1
#   print "#{i}"
#   break if i > 5 #Is this like 'until'?
# } #end

# i = 20
# loop do
#   i -= 1
#   print "#{i}"
#   break if i <= 0
# end

# for i in 1..5
#   next if i % 2 == 0 #The módulo operator in action!
#   print i
# end

i = 20
loop do
  i -= 1
  next if i % 2 != 0
  puts "#{i}"
  break if i <= 0
end

# array = [1,2,3,4,5]
# #'each' apply an expression to each element of an object, one at a time
# array.each do |x| #'x' is a placeholder for each element of the object you're using .each on.
#   x += 10
#   puts "#{x}"
# end

# odds = [1,3,5,7,9]
# odds.each { |x|
#  x *= 2
#  print "#{x}"
# }

# 10.times do
#  print "Chunky bacon!"
# end

# 5.times do
#     print "Oh my God! "
# end

# i = 3
# while i > 0 do
#   print i
#   i -= 1
# end

# i = 1
# while i <= 50 do #This evaluates true, so while executes
#     print i
#     i += 1
# end

# i = 1
# until i == 50 do
#     print i
#     i += 1
# end

# for k in 1..3
#   print k
# end

# for x in 1...51
#     print x
# end

# r = 0
# loop do
#     r+= 1
#     print "Ruby!"
#     break if r == 30
# end

30.times {print "Ruby!"}
