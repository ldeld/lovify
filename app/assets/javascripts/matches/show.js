var showFullList = document.getElementById("show-full-list");
var showMoreInfo = document.getElementById("show-more-info");
var profileCard = document.getElementById("profile-card");
var card = document.querySelector(".card");
// var infoCard = document.getElementById("more-info")

// if (showFullList) {
//   showFullList.addEventListener("click", function(event) {
//     event.preventDefault();
//     hiddenArtists = document.getElementById("artist-list")
//     hiddenArtists.classList.toggle("hidden");
//     hiddenArtists.classList.toggle("show-content");

//     hiddenTracks = document.getElementById("track-list")
//     hiddenTracks.classList.toggle("hidden");
//     hiddenTracks.classList.toggle("show-content");


//     showFullList.classList.add("hidden");
//   });
// };




function triggerIn() {
  card.setAttribute("class", "card animated slideOutLeft");
  document.querySelector("#off").setAttribute("id", "on");
  showMoreInfo.classList.add("hidden")
  var x = document.createElement("div");
  x.setAttribute("class", "fade");
  document.querySelector(".wrapper").appendChild(x);


  // profileCard.classList.remove( "col-xs-offset-3");

}




showMoreInfo.addEventListener("click", function(event) {
  event.preventDefault();
  infoCard.classList.remove("hidden");
  profileCard.classList.remove("col-xs-offset-3");
  showMoreInfo.classList.add("hidden")
});
