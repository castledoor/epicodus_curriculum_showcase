var Contact = {
  phoneNumber: "",
  email: "",

  editName: function(newName) {
    this.name = newName;
  },

  initializeContact: function() {
    this.phoneNumbers = [];
    this.emails = [];
    this.addresses = [];
  },

  addAddress: function(streetAddress, cityStateZip) {
    this.addresses.unshift([streetAddress, cityStateZip]);
  },

  addPhoneNumber: function(newNumber) {
    this.phoneNumbers.unshift(newNumber);
  },

  addEmail: function(newEmail) {
    this.emails.unshift(newEmail);
  },

  setID: function(id) {
    this.contactID = id;
  }
}



$(function() {
  counter = 0;
  var contacts = [];
  var phoneCounter = 0;
  var emailCounter = 0;
  var addressCounter = 0;


  $('#add-phone').click(function() {
    phoneCounter++;
    $('span#new-phone').append('<br><input id="phone' + phoneCounter + '" class="clear" type="text" placeholder="Phone Number"></input>');
    return false;
  });

  $('#add-email').click(function() {
    emailCounter++;
    $('span#new-email').append('<br><input id="email' + emailCounter + '" class="clear" type="text" placeholder="Email Address"></input>');
    return false;
  });

  $('#add-address').click(function() {
    addressCounter++;
    $('span#new-address').append('<br><input id="address1' + addressCounter + '" class="clear" type="text" placeholder="Street Address"></input><br><input id="address2' + addressCounter + '" class="clear" type="text" placeholder="City, State, Zip"></input>');
    return false;
  });


  $('form#new-contact').submit(function() {
    var name = $('input#name').val();
    var contact = Object.create(Contact);
    contact.initializeContact();

    contact.editName(name);
    contact.setID(counter);

    for (phoneCounter; phoneCounter >= 0; phoneCounter--) {
      var phoneNumber = $('input#phone' + phoneCounter).val();
      contact.addPhoneNumber(phoneNumber);
    }
    phoneCounter = 0;

    for (emailCounter; emailCounter >= 0; emailCounter--) {
      var email = $('input#email' + emailCounter).val();
      contact.addEmail(email);
    }
    emailCounter = 0;

    for (addressCounter; addressCounter >= 0; addressCounter--) {
      var address1 = $('input#address1' + addressCounter).val();
      var address2 = $('input#address2' + addressCounter).val();
      contact.addAddress(address1, address2);
    }
    addressCounter = 0;

    contacts.push(contact);
    counter++;
    contacts.sort(function(a, b) {
      return a.name > b.name;  
    });

    $('ul#contact-list').empty();
    contacts.forEach(function(contact) {
      var thisID = contact.contactID;
 
      $('ul#contact-list').append('<li class="contact" value="' + thisID + '">' + contact.name + '</li><span class="tiny-pic edit" id="edit' + thisID + '"></span><span class="tiny-pic delete" id="delete' + thisID + '"></span><ul id="' + thisID + '" class="contact-info"></ul>');

      contact.phoneNumbers.forEach(function(phoneNumber) {
        $('ul#' + thisID).append('<li class="phone">' + phoneNumber + '</li>');
      });

      contact.emails.forEach(function(email) {
        $('ul#' + thisID).append('<li class="email">' + email + '</li>');
      });

      contact.addresses.forEach(function(address) {
        $('ul#' + thisID).append('<li class="address1">' + address[0] + '</li><li class="address2">' + address[1] + '</li>');
      });

    });

    $("input.clear").val("");
    $('span#new-phone').empty();
    $('span#new-email').empty();
    $('span#new-address').empty();


    $('li.contact').click(function() {
      var id = $(this).attr("value");
      console.log(id);
      $('ul#' + id).toggle();
      // $('span#edit' + id).toggle();
      // $('span#delete' + id).toggle();
    });

    return false;
  });

  return false;
});

