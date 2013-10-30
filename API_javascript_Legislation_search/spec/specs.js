describe("Address Book", function() {
  describe("Contact", function() {
    it("initializes a new contact with no phone number", function() {
      var contact = Object.create(Contact);
      contact.phoneNumber.should.equal("");
    });

    it("initializes a new contact with no email", function() {
      var contact = Object.create(Contact);
      contact.email.should.equal("");
    });

    describe("editName", function() {
      it("sets the contact\'s name", function() {
        var contact = Object.create(Contact);
        contact.editName("Jamie");
        contact.name.should.equal("Jamie");
      });
    });

    describe("initializeContact", function() {
      it("initializes a new contact with an empty array for phone numbers", function() {
        var contact = Object.create(Contact);
        contact.initializeContact();
        contact.phoneNumbers.should.eql([]);
      });

      it("initializes a new contact with an empty array for email addresses", function() {
        var contact = Object.create(Contact);
        contact.initializeContact();
        contact.emails.should.eql([]);
      });

      it("initializes a new contact with an empty array for mailing addresses", function() {
        var contact = Object.create(Contact);
        contact.initializeContact();
        contact.addresses.should.eql([]);
      });
    });

    describe("addAddress", function() {
      it("adds the address", function() {
        var contact = Object.create(Contact);
        contact.initializeContact();
        contact.addAddress("1234 Number St", "Portland, OR");
        contact.addresses[0].should.eql(["1234 Number St", "Portland, OR"]);
      });
    });

    describe("addPhoneNumber", function() {
      it("adds the phone number", function() {
        var contact = Object.create(Contact);
        contact.initializeContact();
        contact.addPhoneNumber("123-456-7890");
        contact.phoneNumbers[0].should.equal("123-456-7890");
      });
    });

    describe("addEmail", function() {
      it("adds the email address", function() {
        var contact = Object.create(Contact);
        contact.initializeContact();
        contact.addEmail("jamie@numberst.com");
        contact.emails[0].should.equal("jamie@numberst.com");
      });
    });

    describe("setID", function() {
      it("sets the contact's ID", function() {
        var contact = Object.create(Contact);
        contact.setID(3);
        contact.contactID.should.equal(3);
      });
    });
  });
});








