$(function() {
  $("form#get-zip").submit(function() {
    $("ul#legislators").empty();
    var zip = $("input#zip").val();
    var legislatorID;
    $.get("http://congress.api.sunlightfoundation.com/legislators/locate?apikey=1b4b9e614bce45a9b1318520c12e821f&zip=" + zip, function(responseBody) {
      responseBody.results.forEach(function(legislator) {
        var legislatorID = legislator.bioguide_id;
        $("ul#legislators").append("<li>" + 
          "<span class='names2click'>" + legislator.first_name + " "  + legislator.last_name + "</span>" + 
          "<div class='hiding'>" + 
            "<ul>" + 
              "<li> (" + legislator.chamber + ") </li>" +
              "<li>Party:" + " " + legislator.party + "</li>" + 
              "<li>District: " + legislator.district + "</li>" +
              "<li><button id='bills' type='submit'>View Bills</button></li>" + 
            "</ul>" +
          "</div></li>");
           
            $("button#bills").click(function() {
              $("ul#bills2").empty();
              $.get("http://congress.api.sunlightfoundation.com/bills?sponsor_id=" + legislatorID + "&apikey=1b4b9e614bce45a9b1318520c12e821f", function(responseBodyBills) {
                  responseBodyBills.results.forEach(function(bill) {
                    console.log(bill);
                    $("ul#bills2").append("<li>" + bill.official_title + "</li>");

                    $("button#bills").slideToggle();
                  });
              });
                   
              });
            
           
        $(".names2click").last().click(function() { 
          $(this).next().slideToggle();
           }); 

      });  
    });  
    return false; 
  });
});
    


  //   $("button#bills").click();
  //   $.get("http://congress.api.sunlightfoundation.com/bills?sponsor_id=" + legislatorID + "&apikey=1b4b9e614bce45a9b1318520c12e821f", function(responseBody) {
  //     responseBody.results.forEach(function(legislator) {
  //       console.log(responseBody);
  //       $("ul#lbills2").append("<li>" + responseBody.results[0] + "</li>");
  //     });
  //   });
  //   $("ul#legislators2").empty().val();
  //   return false;
  //    });
  // });



// $(function() {
//   $("form2#get-zip2").submit(function() {
//     var zip = $("input#zip2").val();
//     $.get("http://congress.api.sunlightfoundation.com//legislators/locate?latitude=42.96&longitude=-108.09apikey=1b4b9e614bce45a9b1318520c12e821f&zip=" + zip, function(responseBody) {
//       responseBody.results.forEach(function(legislator) {
//         $("td#legislators").append("<li>" + legislator.first_name + " " + legislator.last_name + " (" + legislator.chamber + ") "  + "</li>").append();
