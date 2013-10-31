require './lib/triangle'

def triangle_menu
  puts "Press 'a' to add a triangle."
  puts "Press 'x' to exit."
  main_choice = gets.chomp
  if main_choice == 'a'
    add_triangle
  elsif main_choice == 'x'
    puts "good-bye"
  else
    puts "sorry, that wasnt a valid option" 
  end
end 
def add_triangle
  puts "enter triangle sides"
  # add the .to_i to turn the gets.chomp string back into an integer
  side1 = gets.chomp.to_i 
  side2 = gets.chomp.to_i
  side3 = gets.chomp.to_i
  triangle = Triangle.new(side1,side2,side3)
  puts triangle.triangle_type
  triangle_menu
end
triangle_menu  

