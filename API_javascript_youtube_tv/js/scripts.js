var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

$(function() {
  $("form#vidmachine-search").submit(function() {
    var video = $("input#vid-search").val();
    var parameters = $(this).serialize();
    $("#player").empty();
    $.get("https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&videoCaption=closedCaption&key=AIzaSyCsgVzyd8vqxY1yli0E5CHL-iaj9prAs44&q=" + video)
      .done(function(responseText) { 
        responseText.items.forEach(function(videoInfo) {
          $("#player").empty();
        // $(".videoTitle").last().click(function() {
          //.frame is now the class that holds the iframe//
          // $("#player").empty();
          // $("#pa").append("<iframe id='player' type='text/html' width='640' height='390' src='http://www.youtube.com/embed/" + videoInfo.id.videoId +"?enablejsapi=1&origin=http://example.com' frameborder='0'></iframe>");
          
          var player = new YT.Player('player', {
       
            height: '390',
            width: '640',
            playerVars: { 
              autoplay: 1 },
            videoId: videoInfo.id.videoId,
            events: {
           
              // 'onReady': onPlayerReady

              // 'onStateChange': onPlayerStateChange
            }
            
          });  
        });           
        $("input#vid-search").val("");
      });    
    return false;  
  });
});    

//-------------------------------------------- API VIDEO STEPS ONE THROUGH TWO -------------------------------------------------------
// $(function() {
//   $("form#vidmachine-search").submit(function() {
//     $(".vidmachine-results").empty();
//     var video = $("input#vid-search").val();
//     var parameters = $(this).serialize();
//     $.get("https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&videoCaption=closedCaption&key=AIzaSyCsgVzyd8vqxY1yli0E5CHL-iaj9prAs44&q=" + video)
//       .done(function(responseText) {
//         responseText.items.forEach(function(videoInfo) { 
//           $(".vidmachine-results").append("<li class='dividing-results'><span class=videoTitle>" + videoInfo.snippet.title + "</span><br>" + videoInfo.snippet.description + "<br>" + "</li>");
          
//           $(".videoTitle").last().click(function() {
//             //.frame is now the class that holds the iframe//
//             $(".frame").empty();
//             $(".frame").append("<iframe id='player' type='text/html' width='640' height='390' src='http://www.youtube.com/embed/" + videoInfo.id.videoId +"?enablejsapi=1&origin=http://example.com' frameborder='0'></iframe>");
//           });
           
//           $("input#vid-search").val("");
//         });  
//       });  
//     return false;  
//   });
// });    

