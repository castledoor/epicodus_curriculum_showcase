require './lib/contacts'
require './lib/address_book'




@book = Book.new


def address_book_menu
  puts "Welcome to your address book. Press 'a' to add a new contact 'd' for your contact list or 'x' to exit"
  main_choice = gets.chomp
  if main_choice == 'a'
    new_contact
  elsif main_choice == 'd'
    display_existing_contact_names
  elsif main_choice == 'x'
    puts "You are now leaving your address book"
  else 
    puts "Sorry, invalid entry"
    address_book_menu
  end
end  


def new_contact
  puts "Please enter your contact name"
  name_entry = gets.chomp
  @contact = Contact.new
  @contact.add_name(name_entry)
  puts "Please enter contact phone number"
  number_entry = gets.chomp
  @contact.add_phone(number_entry)
  puts "Please press '+' if you woud like to add another number or 'c' to continue"
  additional_info_phone = gets.chomp
  if additional_info_phone  == '+'
    puts "Please enter another contact phone number"
    number_entry = gets.chomp
    @contact.add_phone(number_entry)
    puts @contact.phone
  elsif additional_info_phone == 'c'
    puts @contact.phone
  else 
    puts "invalid entry"
  end
  puts "Please enter contact email address"
  email_entry = gets.chomp
  @contact.add_email(email_entry)
  puts "Please press '+'  if you would like to add another number or 'c' to continue"
  additional_info_email = gets.chomp
  if additional_info_email == '+'
    puts "Please enter another contact email"
    email_entry = gets.chomp 
    @contact.add_email(email_entry)
    puts @contact.email
  elsif additional_info_email == 'c'
    puts @contact.email
  else 
  puts "invalid entry"  
  end
  puts "Please enter contact addess" 
  address_entry = gets.chomp
  @contact.add_address(address_entry)
  puts "Please press '+' if you would like to add another number or 'c' to continue"
  additional_info_address = gets.chomp
  if additional_info_address == '+'
    puts "Please enter another address"
    address_entry = gets.chomp
    @contact.add_address(address_entry) 
    puts @contact.address
  elsif additional_info_address == 'c'
    puts @contact.address
  else 
  puts "invalid entry"  
  end 
  puts @contact.name
  puts @contact.email
  puts @contact.phone
  puts @contact.address
  @book.get_contact(@contact)  
  address_book_menu
end    
    
def display_existing_contact_names
  if @book.contacts.length == 0
    puts "your address books appears to be empty"
    address_book_menu
  elsif @book.contacts.length != 0
    puts "Please type in a name to receive addition contact information about that entry"
      @book.contacts.each  do |contact|
        puts contact.name
      end
    contact_input = gets.chomp
    results = @book.look_up(contact_input)
    p results
    results.each do |contact|
      puts contact.phone
      puts contact.email
      puts contact.address
    end   
    puts "If you wish to edit this entry -- Please press 'p' to edit phone 'a' to edit address 'e' to edit email"
    edit_entry_input = gets.chomp
    if edit_entry_input == 'p'
      puts "please enter the old number press enter and then enter the replacement number"
      edit_entry_phone_old = gets.chomp
      edit_entry_phone_new = gets.chomp
       puts "your edit has been made"
      @contact.edit_phone(edit_entry_phone_old, edit_entry_phone_new)
    elsif edit_entry_input == 'a'
      puts "please enter the old address press enter and then enter the replacement address"
      edit_entry_address_old = gets.chomp
      edit_entry_address_new = gets.chomp
       puts "your edit has been made"
      @contact.edit_address(edit_entry_address_old,edit_entry_address_new)
    elsif edit_entry_input == 'e'
      puts "please enter the old email press enter and then enter the reaplcement email"
      edit_entry_email_old = gets.chomp
      edit_entry_email_new = gets.chomp
      puts "your edit has been made"
      @contact.edit_email(edit_entry_email_old, edit_entry_email_new)
    else 
    display_existing_contact_names
    end  
  else 
    puts "invalid entry"
    display_existing_contact_names  
  end   
end
address_book_menu

  









