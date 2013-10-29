require 'rspec'
require 'contacts'
require 'address_book'

describe Contact do
  it 'initializes as a contact' do
    contact = Contact.new
    contact.should be_an_instance_of Contact
  end
  it 'adds a name array to contact' do
    contact = Contact.new
    contact.add_name("Xander Winston")
    contact.name.should eq(["Xander Winston"])
  end 
  it 'adds a phone number array to contact' do
    contact = Contact.new
    contact.add_phone("7063264408")
    contact.phone.should eq(["7063264408"])
  end  
  it 'adds a second phone number to the phone number array' do
    contact = Contact.new
    contact.add_phone("7063264407")
    contact.add_phone("7063264408")
    contact.phone.should eq(["7063264407", "7063264408"])
  end  
  it 'adds an email array to contact' do
    contact = Contact.new
    contact.add_email("moo@prettycows.com")
    contact.email.should eq(["moo@prettycows.com"])
  end
  it 'adds an address array to contact' do
    contact = Contact.new
    contact.add_address("45 Water Colour Way, Greenville, USA") 
    contact.address.should eq(["45 Water Colour Way, Greenville, USA"])
  end
  it 'edits a phone entry' do
    contact = Contact.new
    contact.add_phone("706326440a")
    contact.edit_phone("706326440a", "7063264408")
    contact.phone.should eq(["7063264408"])
  end
  it 'edits an email entry' do
    contact = Contact.new
    contact.add_email("oops@gmail.com")
    contact.edit_email("oops@gmail.com", "fixed@gmail.com")
    contact.email.should eq(["fixed@gmail.com"]) 
  end
  it 'edits an email entry' do
    contact = Contact.new
    contact.add_address("45 Wrong Turn Rd")
    contact.edit_address("45 Wrong Turn Rd", "56 Right Turn Lane")
    contact.address.should eq(["56 Right Turn Lane"]) 
  end   
end    