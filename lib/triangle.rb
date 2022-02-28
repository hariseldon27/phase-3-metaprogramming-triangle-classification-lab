require 'pry'
class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    case [@side1, @side2, @side3].uniq.size
    when 1 then pp :equilateral
    when 2 then pp :isosceles
    when 3 then  pp :scalene
    else 
      begin
        raise TriangleError
        
      end
    end
  end

  class TriangleError < StandardError
    puts "error friend!!"
  end
end
# binding.pry