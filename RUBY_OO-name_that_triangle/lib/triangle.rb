class Triangle
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def triangle_type
    if @side1 + @side2 < @side3 || @side2 + @side3 < @side1 || @side1 + @side3 < @side2
      return 'invalid'
    elsif @side1 == @side2 && @side2 == @side3
      return 'equalateral'
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      return 'isosceles' 
    else
      return 'scalene'   
    end   
  end  
end  