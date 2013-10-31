describe("Book", function() {
  it("creates an empty address book", function() {
    var book = Object.create(Book);
    book.initialize();
    book.contacts.should.eql([]);
  });

  it("it receives the contact info", function() {
    var book = Object.create(Book);
    var contact = Object.create(Contact);
    book.initialize();
    book.addContact(contact);
    book.contacts.should.eql([contact]);   
  });

  it("lets you add more than one contact", function() {
    var book = Object.create(Book);
    book.initialize();
    var contact1 = Object.create(Contact);
    var contact2 = Object.create(Contact);
    book.addContact(contact1);
    book.addContact(contact2);
    book.contacts.should.eql([contact1, contact2]);
  });
});

describe("Contact", function() {
  it("has no phones", function() {
    var contact = Object.create(Contact);
    contact.initialize();
    contact.phones.should.eql([]);
  });

  it("has no emails", function() {
    var contact = Object.create(Contact);
    contact.initialize();
    contact.emails.should.eql([]);
  });

  it("has no locations", function() {
    var contact = Object.create(Contact);
    contact.initialize();
    contact.locations.should.eql([]);
  });

  it("adds a first name to contact", function() {
    var contact = Object.create(Contact);
    contact.setFirstName("Sam");
    contact.firstName.should.equal("Sam");
  });

  it("adds a last name to contact", function() {
    var contact = Object.create(Contact);
    contact.setLastName("Winston");
    contact.lastName.should.equal("Winston");
  });

  it("lets you add more than one phone number", function() {
    var contact = Object.create(Contact);
    var phone = Object.create(Phone);
    contact.initialize();
    var phoneNumber1 = Object.create(Phone);
    var phoneNumber2 = Object.create(Phone);
    phone.setPhoneNumber();
    contact.addPhoneNumber(phoneNumber1);
    contact.addPhoneNumber(phoneNumber2);
    contact.phones.should.eql([phoneNumber1, phoneNumber2]);
  });

  it("lets you add more than one email address", function() {
    var contact = Object.create(Contact);
    var email = Object.create(Email);
    contact.initialize();
    var emailAddress1 = Object.create(Email);
    var emailAddress2 = Object.create(Email);
    email.setEmailAddress();
    contact.addEmailAddress(emailAddress1);
    contact.addEmailAddress(emailAddress2);
    contact.emails.should.eql([emailAddress1, emailAddress2]);
  });

  it("lets you add more than one location address", function() {
    var contact = Object.create(Contact);
    var location = Object.create(Location);
    contact.initialize();
    var locationAddress1 = Object.create(Location);
    var locationAddress2 = Object.create(Location);
    location.setLocationAddress();
    contact.addLocationAddress(locationAddress1);
    contact.addLocationAddress(locationAddress2);
    contact.locations.should.eql([locationAddress1, locationAddress2]);
  });
});

describe("Phone", function() {
  it("creates a phone number", function() {
    var phone = Object.create(Phone);
    phone.setPhoneNumber("5555555555");
    phone.phoneNumber.should.eql(["5555555555"]);
  });
});

describe("Email", function() {
  it("creates an email address", function() {
    var email = Object.create(Email);
    email.setEmailAddress("moo@gmail.com");
    email.emailAddress.should.eql(["moo@gmail.com"]);
  });
});

describe("Location", function() {
  it("adds a physical location", function() {
    var location = Object.create(Location);
    location.setLocationAddress("555 Test Street, Portland, OR 97209");
    location.locationAddress.should.eql(["555 Test Street, Portland, OR 97209"]);  
  });
});
