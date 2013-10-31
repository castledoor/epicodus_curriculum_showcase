class Contact
  def initialize
    @number_array = []
    @name_array = []
    @email_array = []
    @address_array = []
  end   
  def add_name(name)
    @name_array << name
  end
  def name
    @name_array
  end 
  def add_phone(number)
    @number_array << number 
  end
  def phone
    @number_array
  end
  def add_email(email) 
    @email_array << email
  end
  def email
    @email_array
  end
  def add_address(address) 
    @address_array << address
  end
  def address
    @address_array 
  end 
  def edit_phone(old_number, edited_number)
    @old_number = old_number
    @edited_number = edited_number
    @number_array.map! do |number|
      if number == @old_number
        @old_number.replace @edited_number
      end  
    end
    puts @edited_number
   end
   def edit_email(old_email, edited_email)
    @old_email = old_email
    @edited_email = edited_email
    @email_array.map! do |email|
      if email == @old_email
        @old_email.replace @edited_email
      end  
    end
    puts @edited_email
   end
   def edit_address(old_address, edited_address)
    @old_address = old_address
    @edited_address = edited_address
    @address_array.map! do |address|
      if address == @old_address
        @old_address.replace @edited_address
      end  
    end
    puts @edited_address
   end   
end  



