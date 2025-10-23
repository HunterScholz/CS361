# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError, "Non-existent Triangle Side" if a <= 0 or b <= 0 or c <= 0
  x, y, z = [a, b, c].sort
  raise TriangleError, "Illegal Triangle" if x + y <= z

  if a == b and b == c
    return :equilateral
  elsif a == b or a == c or b == c
    return :isosceles
  end
  :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
