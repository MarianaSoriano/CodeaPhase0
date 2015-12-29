def median(num_array)
  if num_array.length.even? == true #Even Number: divisible by two without a remainder
    index = (num_array.sort!.length / 2)
    sum = (num_array[index] + num_array[index - 1])
    division = sum.to_f / 2
  else #odd Number: having one left over as a remainder when divided by two
    index = (num_array.sort!.length / 2)
    num_array[index]
  end
end
p median([4, 5, 6]) == 5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8
