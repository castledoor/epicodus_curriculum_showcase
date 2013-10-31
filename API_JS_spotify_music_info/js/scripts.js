$(function() {
  $("form#get-track-name").submit(function() {
    var tracks = $("input#track").val();
    var parameters = $(this).serialize();
    $.get("http://ws.spotify.com/search/1/track.json?q=" + tracks)
      .done(function(responseText) {
        responseText.tracks.forEach(function(trackInfo) {
          var artistInfo = [];
          trackInfo.artists.forEach(function(artist) {
            artistInfo.push(artist.name);
          });
           // trackInfo.album. {
           //  albumInfo.push(album.name);
           //  console.log(album.name);
         // });


          $("ul#tracks").append("<ul id='nested'>" + "<ul id='artistname'>" + "<li>" + "Artist" + ": " + artistInfo + "</li> </ul> <li> " + "Track Name" + ": " + trackInfo.name + "</li><li>" + "Album" + ": " + trackInfo.album.name + "</li>" + "<li>" + "Released" + ": " + trackInfo.album.released  +  "</li>" + "</ul>");
        });
      });
      $('ul#tracks').empty();
      $("input").val("");
    return false;
  });
});


//----------------ORIGINAL AJAX-------------------------------
// $(function() {
//   $("form#get-track-name").submit(function() {
//     var tracks = $("input#track").val();
//     var parameters = $(this).serialize();
//     $.ajax({url: "http://ws.spotify.com/search/1/track?" + parameters, headers: {"Accept": "application/json"}})
//       .done(function(responseText) {
//         responseText.tracks.forEach(function(trackInfo) {
//           var artistInfo = [];
//           trackInfo.artists.forEach(function(artist) {
//             artistInfo.push(artist.name);
//             console.log(artist.name)

//           });
//           $("ul#tracks").append("<ul>" + trackInfo.name + "</li>" + "<li>" + artistInfo + "</ul>");
//         });
//       });

//     return false;
//   });
// });


// --------------- ORIGINAL GET REQUEST (SPOTIFY) --------------------

// $(function() {
//   $("form#get-track-name").submit(function() {
//     var tracks = $("input#track").val();
//     var parameters = $(this).serialize();
//     $.get("http://ws.spotify.com/search/1/track.json?q=" + tracks)
//       .done(function(responseText) {
//         responseText.tracks.forEach(function(trackInfo) {
//           var artistInfo = [];
//           trackInfo.artists.forEach(function(artist) {
//             artistInfo.push(artist.name);
//             console.log(artist.name)

//           });
//           $("ul#tracks").append("<ul>" + trackInfo.name + "</li>" + "<li>" + artistInfo + "</ul>");
//         });
//       });

//     return false;
//   });
// });
