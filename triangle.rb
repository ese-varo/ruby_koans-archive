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
  # WRITE THIS CODE
  sides = [a,b,c].sort
  if sides.uniq.min <= 0
    raise TriangleError.new, 'Sides cannot be 0 or less'
  end
  if sides.min(2).reduce(:+) <= sides.max
    raise TriangleError.new 'One side >= than the sum of the other two'
  end
  return :equilateral if sides.uniq.size == 1
  return :isosceles   if sides.uniq.size == 2
  :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
