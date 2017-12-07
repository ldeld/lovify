const showArtists = document.getElementById("show-artists");


showArtists.addEventListener("click", (event)=> {
  event.preventDefault();
  hiddenArtists = document.getElementById("artist-list")
  hiddenArtists.classList.toggle("hidden");
  hiddenArtists.classList.toggle("show-content");
  showArtists.innerText = "Show less";
});
