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
  addEditedNumber: function(editedNumber) {
    this.phones.push(editedNumber);
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
  },
  editPhoneNumber: function(editedNumber) {
    this.phoneNumber.shift();
    this.phoneNumber.push(editedNumber); 

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


// $(document).ready(function() {
//     $('.edit_area').editable();
// });
$(function() {

var book = Object.create(Book);
book.initialize();
var contact = Object.create(Contact);
var phone1 = Object.create(Phone);
var phone2 = Object.create(Phone);
var email1 = Object.create(Email);
var email2 = Object.create(Email);
var location1 = Object.create(Location);
var location2 = Object.create(Location);    

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
      "<ul class='detail'><li id='fone1' class='details'>" + "Contact Number:" +"  "+ phone1.phoneNumber + ' ' +
      "<form id='formEdit'><input type='text' id='phone1' class='edit'></form>" + 
      "</li><li class='details'>"  + phone2.phoneNumber + 
      "<input type='text' class='edit'>" + 
      "</li><li class='details'>" + "Email Address: " + email1.emailAddress + 
      "<input type='text' class='edit'>" +
      "</li><li class='details'>"  + email2.emailAddress + 
      "<input type='text' class='edit'>" +
      "</li><li class='details'>" + "Address: " + location1.locationAddress + 
      "<input type='text' class='edit'>" +
      "</li><li class='details'>" + location2.locationAddress +
      "<input type='text' class='edit'>" +
      "</li></ul><div id='buttons'></div>");    
    $("li.names").last().click(function() {
      $(this).next().next().last().append("<button type='button' id='delete' class='btn'>Delete Entry</button>" + "  " +
      "<button type='button' id='edit1' class='btn'>Edit Entry</button>" );
      $(this).unbind('click');
      $(this).bind('click', function() {
          $(this).next().slideToggle();
          $(this).next().next().slideToggle();
      }); 
    $("button#delete").click(function() {
     $(this).parent().prev().remove();
     $(this).parent().prev().remove();
     $(this).remove();
     $("button#edit1").remove();
    });
    
  
    });  
    console.log(phone1.phoneNumber);
    $("#edit1").last().click(function() {
      $("input#phone1").show();
      $("#edit1").hide();
      $("#submit-edit1").show();
      $("#submit-edit1").click(function() {
        phone1.editPhoneNumber($("input#phone1").val());
        console.log(phone1.phoneNumber);
        $("#submit-edit1").remove();  
        $('#edit1').show();
        $("input#phone1").hide();
        });
    });  
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
