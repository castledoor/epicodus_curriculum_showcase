class Contact
  def initialize(name, phone, email, address, id=nil)
    @id = id
    @name = name
    @phone = phone
    @email = email
    @address = address
  end

  def id
    @id
  end  

  def name
    @name 
  end 
  
  def phone
    @phone
  end

  def email
    @email
  end

  def address
    @address
  end

  def save 
    results = DB.exec("INSERT INTO contacts (name) VALUES ('#{@name}') RETURNING id;")
    results.each do |result|
      @id = result['id'].to_i 
    end
    DB.exec("INSERT INTO phones (phone, name_id) VALUES ('#{@phone}','#{@id}') WHERE 'name_id' = @id;")
    DB.exec("INSERT INTO emails (email, name_id) VALUES ('#{@email}','#{@id}') WHERE 'name_id' = @id;")
    DB.exec("INSERT INTO addresses (address, name_id) VALUES ('#{@address}','#{@id}') WHERE 'name_id' = @id;")
  end

  def self.all
    results = DB.exec("SELECT * FROM contacts, phones, emails, addresses;")
    contacts = []
    results.each do |result|
      id = result['id'].to_i 
      name = result['name']
      phone = result['phone']
      email = result['email']
      address = result['address']
      contacts << Contact.new(name, phone, email, address, id)
    end  
    contacts
  end 

  def ==(another_contact)
    self.name == another_contact.name &&
    self.phone == another_contact.phone &&
    self.email == another_contact.email &&
    self.address == another_contact.address &&
    self.id == another_contact.id
  end
end 


