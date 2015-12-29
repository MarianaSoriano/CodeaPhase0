num1 = 9.to_f
num2 = 5.to_f
# sum = num1 + num2
# difference = num2 - num1
# product = num1 * num2
quotient = num1 / num2

puts quotient

def by_three?(number)
    if number % 3 == 0
        return true
    else number % 3 != 0
        return false
    end
end

puts by_three?(19)

my_array = [1, 2, 3, 4, 5]
my_array.each { |n| puts n * n } #multiplies each item by itself

def add(num1, num2)
  num1 + num2
end
p add(10, 2) == 12

def substract(num1, num2)
  num1 - num2
end
p substract(10, 2) == 8

def multiply(num1, num2)
  num1 * num2
end
p multiply(10, 2) == 20

def divide(num1, num2)
  num1.to_f / num2.to_f
end
p divide(10, 4) == 2.5

def double(num)
    yield num
end

print double(9) {|num| num * 2}
