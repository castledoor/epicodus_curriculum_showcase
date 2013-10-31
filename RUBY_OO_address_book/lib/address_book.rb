class Book
  def initialize
    @contacts = []
  end
  def get_contact(contact)
    @contacts << contact
  end 
  def contacts
    @contacts
  end
  def look_up(name)
    @name = name
    @look_up_results = []
    @contacts.each do |contact|
      if contact.name == [@name] 
        @look_up_results << contact
      end  
    end 
    @look_up_results
  end   
end 

    