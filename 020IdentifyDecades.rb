def decade(year)
  if year.between?(1960, 1969)
    return "Sixties"
  elsif year.between?(1970, 1979)
    return "Seventies"
  elsif year.between?(1980, 1989)
    return "Eighties"
  elsif year.between?(1990, 1999)
    return "Nineties"
  else
    return "Unknown decade"
  end
end
p decade(1960) == "Sixties"
p decade(1975) == "Seventies"
p decade(1982) == "Eighties"
p decade(1999) == "Nineties"
p decade(2003)
