def leap_year?(year)
	divisible_by_4 = year % 4 == 0
	divisible_by_100 = year % 100 == 0
	divisible_by_400 = year % 400 == 0
	if !divisible_by_4 #if (year is not exactly divisible by 4) then (it is a common year [false])
		return false
	elsif !divisible_by_100 #else if (year is not exactly divisible by 100) then (it is a leap year [true])
		return true
	elsif !divisible_by_400 #else if (year is not exactly divisible by 400) then (it is a common year [false])
		return false
	else
		return true #else (it is a leap year [true])
	end
end

p leap_year?(1900) == false
p leap_year?(1988) == true
p leap_year?(1989) == false
p leap_year?(1992) == true
p leap_year?(2000) == true
p leap_year?(2001) == false
p leap_year?(2001) == false
p leap_year?(1600) == true
p leap_year?(1704) == true
