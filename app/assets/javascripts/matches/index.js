const showFullList = document.getElementById("show-full-list");
const showMoreInfo = document.getElementById("show-more-info");
const profileCard = document.getElementById("profile-card");
const infoCard = document.getElementById("more-info")

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
