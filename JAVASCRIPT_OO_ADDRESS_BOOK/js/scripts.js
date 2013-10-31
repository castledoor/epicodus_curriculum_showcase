var Book = {
  initialize: function() {
    this.contacts = [];
  },

  addContact: function(contact) {
    this.contacts.push(contact);
  }
};

var Contact = {
  initialize: function() {
    this.phones = [];
    this.emails = [];
    this.locations = [];
  },

  setFirstName: function(newFirstName) {
    this.firstName = newFirstName;
  },

  setLastName: function(newLastName) {
    this.lastName = newLastName;
  },

  addPhoneNumber: function(phoneNumber1) {
    this.phones.push(phoneNumber1);
  },

  addEmailAddress: function(emailAddress1) {
    this.emails.push(emailAddress1);
  },

  addLocationAddress: function(locationAddress1) {
    this.locations.push(locationAddress1);
  }
};

var Phone = {
  setPhoneNumber: function(newPhoneNumber) {
    this.phoneNumber = [newPhoneNumber];
  }
};

var Email = {
  setEmailAddress: function(newEmailAddress) {
    this.emailAddress = [newEmailAddress];
  }
};

var Location = {
  setLocationAddress: function(newLocationAddress) {
    this.locationAddress = [newLocationAddress];
  }
};


$(function() {

var book = Object.create(Book);
book.initialize();

  $("button#phone-numbers").click(function() {
    $("input#phone-number2").show();
  });
  $("button#email-addresses").click(function() {
    $("input#email-address2").show();
  });
  $("button#location-addresses").click(function() {
    $("input#location-address2").show();
  });
  $("form#contactInfo").submit(function() {
    var contact = Object.create(Contact);
    var phone1 = Object.create(Phone);
    var phone2 = Object.create(Phone);
    var email1 = Object.create(Email);
    var email2 = Object.create(Email);
    var location1 = Object.create(Location);
    var location2 = Object.create(Location);
    contact.setFirstName($("input#first-name").val());
    contact.setLastName($("input#last-name").val());
    phone1.setPhoneNumber($("input#phone-number1").val());
    phone2.setPhoneNumber($("input#phone-number2").val());
    email1.setEmailAddress($("input#email-address1").val());
    email2.setEmailAddress($("input#email-address2").val());
    location1.setLocationAddress($("input#location-address1").val());
    location2.setLocationAddress($("input#location-address2").val());
    $("ul#contact-info").append(
      "<li class='names'>" + contact.firstName + " " + contact.lastName + "</li>" +
      "<ul class='detail'><li class='details'>" + "Contact Number#1: " + phone1.phoneNumber + ' ' +
      "<button type='button' id='edit1' class='btn'>Edit</button>" +
      "<input type='text' id='phone1' class='edit'>" + 
      "</li><li class='details'>" + "Contact Number#2: " + phone2.phoneNumber + 
      "<input type='text' class='edit'>" + 
      "</li><li class='details'>" + "Email Address#1: " + email1.emailAddress + 
      "<input type='text' class='edit'>" +
      "</li><li class='details'>" + "Email Address#2: " + email2.emailAddress + 
      "<input type='text' class='edit'>" +
      "</li><li class='details'>" + "Location Address#1: " + location1.locationAddress + 
      "<input type='text' class='edit'>" +
      "</li><li class='details'>" + "Location Address#2: " + location2.locationAddress +
      "<input type='text' class='edit'>" +
      "</li></ul><div id='buttons'></div>");
    contact.initialize();
    contact.addPhoneNumber(phone1);
    contact.addPhoneNumber(phone2);
    contact.addEmailAddress(email1);
    contact.addEmailAddress(email2);
    contact.addLocationAddress(location1);
    contact.addLocationAddress(location2);
    book.addContact(contact);
    $("input#first-name").val("");
    $("input#last-name").val("");
    $("input#phone-number1").val("");
    $("input#phone-number2").val("");
    $("input#email-address1").val("");
    $("input#email-address2").val("");
    $("input#location-address1").val("");
    $("input#location-address2").val("");
    $("li.names").last().click(function() {
      $(this).next().next().last().append("<button type='button' id='delete' class='btn'>delete contact</button>");
      $(this).unbind('click');
      $(this).bind('click', function() {
          $(this).next().slideToggle();
          $(this).next().next().slideToggle();
      }); 
    $("button#delete").click(function() {
     $(this).parent().prev().remove();
     $(this).parent().prev().remove();
     $(this).remove();
    });
    });  
    $("#edit1").last().click(function() {
      // var contact = Object.create(Contact);
      // var phone1 = Object.create(Phone);
      // var phone2 = Object.create(Phone);
      // var email1 = Object.create(Email);
      // var email2 = Object.create(Email);
      // var location1 = Object.create(Location);
      // var location2 = Object.create(Location);
      // contact.initialize();
      // contact.addPhoneNumber(phone1);
      // contact.addPhoneNumber(phone2);
      // contact.addEmailAddress(email1);
      // contact.addEmailAddress(email2);
      // contact.addLocationAddress(location1);
      // contact.addLocationAddress(location2);
      // book.addContact(contact);
      $("input#phone1").show();
      debugger;
      phone1.setPhoneNumber($("input#phone2").val());

    });

  //   $("#buttons").last().append("<button type='button' id='delete' class='btn'>Delete</button>" +
  //    " " + "<button type='button' id='edit' class='btn'>Edit</button>");

  return false;
  });
});
































//---------------------------michael taught us something---------------//
// var classroom = {
//   name: "epicodus",
//   addBike: function(bike) {
//     this.bikes.push(bike);
//   }
// };

// var schwinn = {
//   type: 'road bike',
//   color: 'yellow',
//   works: 'sometimes',
//   foo: "bar",
//   baz: "qux",
// };

// var bianchi = {
//   type: 'also road bike',
//   color: 'blue'
// };

// var Bicycle = {
//   setType: function(type) {
//     this.type = type;
//   },
//   setColor: function(color) {
//     this.color = color;
//   }
// };

// var schwinn = Object.create(Bike);
// schwinn.setType("road bike");
