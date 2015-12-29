numbers = [26, 12, 65, 1024, 2, 5000, 18]

def alphabetize(numbers_list)
    numbers_list.sort!# the exclamation mark means we modify the actual list
end
print alphabetize(numbers)

def alphabetize(numbers_list, rev = false)
    numbers_list.sort!
    if rev == true
        numbers_list.reverse!
    else
        numbers_list
    end
end
print alphabetize(numbers, rev = true)
