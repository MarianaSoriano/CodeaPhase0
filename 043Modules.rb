# A Module is a collection of methods and constants
module Circle

  PI = 3.141592653589793

  def Circle.area(radius)
    PI * radius**2
  end

  def Circle.circumference(radius)
    2 * PI * radius
  end
end
p Circle.circumference(8)
p Circle.area(8)
