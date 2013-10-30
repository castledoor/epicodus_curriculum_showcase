class Dictionary
  def initialize 
    @word_bank = {}
  end

  def words
    @word_bank
  end
  def adds_words(new_entry)   
    @word_bank[new_entry.keys[0]] = new_entry.values[0]
  end
end    











# peeps = {'boo' => 9005551212}

# peeps['buddy'] = 5551212
# peeps['manaachuhum'] = 397347534
# peeps