require 'spec_helper'

describe Contact do
  it 'is initialized with a name, phone, email, and address and its database ID' do
    contact = Contact.new('Jim', '333-333-3333', 'jim@jim.com', '123 Apple St', )
    contact.should be_an_instance_of Contact
  end


  it 'starts off with no info' do
    Contact.all.should eq []
  end




  it 'lets you save a contact to the database' do
    contact = Contact.new('Jim', '333-333-3333', 'jim@jim.com', '123 Apple St',)
    contact.save
    Contact.all.should eq [contact]
  end





  it 'is the same contact if it has the same name' do
    contact1 = Contact.new('Jim', '333-333-3333', 'jim@jim.com', '123 Apple St',)
    contact2 = Contact.new('Jim', '333-333-3333', 'jim@jim.com', '123 Apple St',)
    contact1.should eq contact2
  end

  it 'is not the same if it has a different email' do
    contact1 = Contact.new('Jim', '333-333-3333', 'jim@jim.com', '123 Apple St',)
    contact2 = Contact.new('Jim', '333-333-3333', 'jimmy@jimmy.com', '123 Apple St',)
    contact1.should_not eq contact2
  end
end