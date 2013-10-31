require './lib/contacts'
require './lib/book'
require 'pg'

DB = PG.connect(:dbname => 'address_book')

def main_menu
  puts "Welcome to your address book"
  puts "Press 'a' to add a contact"
  puts "Press 'v' to view your contacts"
  puts "Press 'x' to exit"
  main_option = gets.chomp.downcase
  case main_option
  when 'a'
    add_new_contact
  when 'v'
    display_contacts
  when 'x'
    puts "Goodbye"
  else 
    puts "Please enter a valid option"
    main_menu
  end
end    

def add_new_contact
  puts "Enter the name of your contact."
  name = gets.chomp
  puts "Enter the phone number of your contact."
  phone = gets.chomp
  puts "Enter the email address."
  email = gets.chomp
  puts "Enter the street or mailing address."
  address = gets.chomp
  contact = Contact.new(name, phone, email, address)
  contact.save
  puts "Your contact has been added."
  main_menu
end

def display_contacts
  contacts = Contact.all
  contacts.each do |contact|
    puts contact.name
    puts contact.phone
    puts contact.email
    puts contact.address + "\n\n"
  end
  main_menu
end

main_menu
