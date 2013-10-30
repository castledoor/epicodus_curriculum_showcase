
def pig_latin(english_phrase)

  vowels = ["a","e","i","o","u"]
  words = english_phrase
  final_translation = english_phrase
  word_array = []
  final = []

  english_phrase.downcase.split(" ").each do |word|
    words = word.split("")
    word_array.push(words)
  end
  word_array.each do |werd|
    if vowels.include?(werd[0])
      final_translation = werd.join("") + "way"
      final.push(final_translation)
    elsif werd[0] == "q" && werd[1] == "u"
      first_two_letters = werd.slice!(0..1) 
      final_translation = werd.push(first_two_letters).join("") + "ay" 
      final.push(final_translation)
    else
      werd.each_with_index do |letter,index| 
        if vowels.include?(letter)
          last_part_of_the_word = werd.slice(index..-1)
          first_part_of_the_word = werd.slice(0..index- 1)
          final_translation = last_part_of_the_word.join("") + first_part_of_the_word.join("") + "ay"
          final.push(final_translation)
          break     
        end  
      end
    end 
  end  
   final.join(" ")
end 


