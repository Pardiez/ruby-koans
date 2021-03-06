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
def triangle(*sides)
  sides.sort! {|a,b| a <=> b}
  raise TriangleError if sides[0] <= 0
  raise TriangleError if sides[0] + sides[1] <= sides[2]

  # option 1:
  # return :equilateral if a==b and b==c
  # return :isosceles if a==b or b==c or a==c
  # :scalene

  different_sides_count = sides.uniq.count
  [nil, :equilateral, :isosceles, :scalene][different_sides_count]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
