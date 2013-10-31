# words_split = ["s", "o", "u", "p"]

# vowels = ["a","e","i","o","u"]

# words_split.each_with_index do |letter,index|
#   if vowels.include?(letter)
#      last_part = words_split.slice(index..-1)
#      first_part = words_split.slice(0..index - 1)
#      puts last_part.join("") + first_part.join("") + "ay"
#      break  
#   end
# end


# if vowels.include? (letterArray[0])
#      letterArray.join("") + "way"

  # elsif
     # firstLetter = letterArray.slice!(0)
     # letterArray.push(firstLetter).join("") + "ay"


 vowels = ["a","e","i","o","u"]

 # puts vowels[0]
 # puts vowels[1]

words_go_inside_here = []
english_phrase = "Green Eggs and Ham"
english_phrase.split(" ").each do |word|
  words = word.split("")
  words_go_inside_here.push(words)
  p words_go_inside_here
end









 