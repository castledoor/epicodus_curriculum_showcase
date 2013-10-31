class Die
  def initialize(sides)
    @sides = sides
  end 
  def roll
    pos_rolls = []
    (1..@sides).each do |i|
       pos_rolls.push(i) 
    end 
    final_roll = rand(pos_rolls.length)
  end
end