def title_case(words)
  # splitWord = word.split("") 
  # splitWord[0].upcase!
  # splitWord.join
exceptions = [
"as",
"because",
"with",
"in order that",
"since",
"to",
"for",
"and",
"an",
"a",
"the",
"in"
]
  words.downcase!
  split_words = words.split(" ")
  firstTitleLetters = split_words[0].split("")
  firstTitleLetter = firstTitleLetters[0].upcase! 
  split_words[0] = firstTitleLetters.join("")
  capitalize = split_words.map do |split_word|
    if !exceptions.include?(split_word)
    split_letters = split_word.split("")
    split_letters[0].upcase!
    split_letters.join
    else 
      split_word
    end
  end
  capitalize.join(" ")
end
