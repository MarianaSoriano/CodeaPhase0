
def dudeney_number?(n)
 sum = n.to_s.chars.map{|x|x.to_i}.reduce(:+)#1.Convert to string 2.convert to an array of strings (to separate each digit) 3.Iterate in each element of that array and convert them into integers and 4.Sum (reduce) array elements
 cube_root = sum * sum * sum
 cube_root == n
end
p dudeney_number?(1) == true
p dudeney_number?(125) == false
p dudeney_number?(512) == true
p dudeney_number?(1728) == false
p dudeney_number?(5832) == true
