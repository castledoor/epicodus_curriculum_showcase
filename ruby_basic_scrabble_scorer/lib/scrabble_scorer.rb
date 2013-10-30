def scrabble_scorer(word)

  one_point = ["a","e","i","o","u","l","n","r","s","t"]
  two_points = ["d","g"]
  three_points = ["b","c","m","p"]
  four_points = ["f","h","v","w","y"]
  five_points = ["k"]
  eight_points = ["j","x"]
  ten_points = ["q","z"]
total_points = []

  word_split = word.split("")

  word_split.each do |letters|
    if one_point.include?(letters)
      total_points.push(1)
    elsif two_points.include?(letters)
      total_points.push(2)
    elsif three_points.include?(letters)
      total_points.push(3) 
    elsif four_points.include?(letters)
      total_points.push(4)
    elsif five_points.include?(letters)
      total_points.push(5)
    elsif eight_points.include?(letters)
      total_points.push(8) 
    elsif ten_points.include?(letters)
      total_points.push(10)    
    end  
  end 
  sum = 0
  total_points.each {|i| sum += i}
  p sum
end

def scrabble_scorer_double_word(total_points)
   double_word = total_points * 2 
end   

# def scrabble_scorer_double_letter(word_split)
#   double_letter = word_split[0] * 2
# end  