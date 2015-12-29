def prism_type(side_01, side_02, side_03)# Side Size in centimeters
	if side_01 == side_02 && side_02 == side_03
		return "cubo"
	elsif side_01 == side_02 || side_01 == side_03 || side_02 == side_03
		return "prisma rectangular"
	else
		return "cuboide"
	end
end

p prism_type(5, 5, 5) == "cubo"
p prism_type(5, 5, 4) == "prisma rectangular"
p prism_type(5, 4, 3) == "cuboide"
p prism_type(10, 8, 2) == "cuboide"
