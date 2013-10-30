require './lib/die'

def die_menu
  puts "press 'a' to create a die."
  puts "press 'x' to exit."
  main_choice = gets.chomp
  if main_choice == 'a'
    create_a_die
  elsif main_choice == 'x'
    puts "good-bye"
  else
    puts "sorry, that wasnt a valid option"
  end
end  
def create_a_die  
  puts "how many sides will the die have?"
  sides = gets.chomp.to_i
  @die = Die.new(sides)
  puts "press 'r' to roll your die"
  roll = gets.chomp
  if roll == 'r'
    roll_die  
  end  
end   
def roll_die
 puts @die.roll
end
die_menu 