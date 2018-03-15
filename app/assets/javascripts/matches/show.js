
var showFullList = document.getElementById("show-full-list");
var showMoreInfo = document.getElementById("show-more-info");
var profileCard = document.getElementById("profile-card");
var card = document.querySelector(".card");
var infoCard = document.getElementById("more-info");
var dateCard = document.querySelector(".date-card");




function triggerIn() {
  card.setAttribute("class", "card animated slideOutLeft");
  document.querySelector("#off").setAttribute("id", "on");

  showMoreInfo.classList.add("hidden");
};

function triggerInTwo() {
  card.setAttribute("class", "card animated slideOutLeft");
  document.querySelector("#off").setAttribute("id", "on");

  showMoreInfo.classList.add("hidden")
};



$('.bars').click(function() {
  if(!$(this).hasClass('active')) {
    var index = $(this).index();
  }
});
