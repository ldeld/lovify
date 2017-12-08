var showFullList = document.getElementById("show-full-list");
var showMoreInfo = document.getElementById("show-more-info");
var profileCard = document.getElementById("profile-card");
var infoCard = document.getElementById("more-info")

if (showFullList) {
  showFullList.addEventListener("click", (event)=> {
    event.preventDefault();
    hiddenArtists = document.getElementById("artist-list")
    hiddenArtists.classList.toggle("hidden");
    hiddenArtists.classList.toggle("show-content");

    hiddenTracks = document.getElementById("track-list")
    hiddenTracks.classList.toggle("hidden");
    hiddenTracks.classList.toggle("show-content");


    showFullList.classList.add("hidden");
  });
};

showMoreInfo.addEventListener("click", (event)=> {
  event.preventDefault();
  infoCard.classList.remove("hidden");
  profileCard.classList.remove("col-xs-offset-3");
  showMoreInfo.classList.add("hidden")
});
