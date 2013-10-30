def triangle(side)

  if side[0] + side[1] < side[2] || side[2] + side[1] < side[0] || side[2] + side[0] < side[1]
    return false 
  elsif side[0] == side[1] && side[1] == side[2]
    "equalateral"
  elsif side[0] == side[1] || side[1] == side[2] ||side[0] == side [2]
    "isosceles"  
  elsif side[0] != side[1] && side[1] != side[2] 
    "scalene"
  end
end
