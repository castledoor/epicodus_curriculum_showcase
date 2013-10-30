$(function() {
  $("form#vidmachine-search").submit(function() {
    var video = $("input#vid-search").val();
    var parameters = $(this).serialize();
    $.get("https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&videoCaption=closedCaption&key=AIzaSyCsgVzyd8vqxY1yli0E5CHL-iaj9prAs44&q=" + parameters)
      .done(function(responseText) {
        responseText.items.forEach(function(videoInfo) {
          // var = [];
          console.log(videoInfo.snippet);
        });
      });  
    return false;  
  });
});    
