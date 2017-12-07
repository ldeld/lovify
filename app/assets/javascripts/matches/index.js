const showArtists = document.getElementById("show-artists");


showArtists.addEventListener("click", (event)=> {
  event.preventDefault();
  document.querySelectorAll(".hide-content").forEach(function(artist) {
    artist.classList.toggle("hide-content");
  });
  showArtists.classList.toggle("hide-content");
});
