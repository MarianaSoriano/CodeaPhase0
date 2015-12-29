# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, ...

def fibonacci(count)
  a = 1
  b = 1
  current_count = 0
  while current_count < count-2
    c = a + b
    a = b
    b = c
    current_count +=1
  end
  c
end
p fibonacci(2) == 1 #It doesn't work Why?
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(10) == 55
