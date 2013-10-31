require 'rspec'
require 'contacts'
require 'address_book'

describe Book do
  it'initializes the address book' do
    book = Book.new
    book.should be_an_instance_of Book
  end
  it 'it accepts a contact from the Contact object' do
    book = Book.new
    contact = Contact.new
    book.get_contact(contact)
    book.contacts.length.should eq 1
  end 
  it 'searches the contacts for a specific name' do
    book = Book.new
    contact = Contact.new
    contact.add_name("Steve")
    contact.add_phone("7063264408")
    contact.add_email("moo@prettycows.com")
    book.get_contact(contact)
    book.look_up("Steve").should eq [contact]
  end
  it 'does not return false positives' do
    book = Book.new
    right_contact = Contact.new
    right_contact.add_name("Steve")
    right_contact.add_phone("7063264408")
    right_contact.add_email("moo@prettycows.com")
    wrong_contact = Contact.new
    book.get_contact(right_contact)
    book.get_contact(wrong_contact)
    book.look_up("Steve").should eq [right_contact]
  end
end  