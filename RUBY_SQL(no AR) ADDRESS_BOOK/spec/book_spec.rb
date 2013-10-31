require 'spec_helper'


describe Book do
  it 'is initialized' do
    book = Book.new
    book.should be_an_instance_of Book
  end

  it 'should start as empty' do
    book = Book.new
    book.contacts.should eq []
  end 

  it 'should add contacts to the book' do
    book = Book.new
    contact = Contact.new('Jim', '333-333-3333', 'jim@jim.com', '123 Apple St')
    book.add_contact(contact)
    book.contacts.length.should eq 1
  end
end