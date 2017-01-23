
// tab menu

function openMenu(evt, menuName) {
  var i, tabcontent, tablinks;
  ourmenu = document.getElementsByClassName("ourmenu");
  ourmenu[0].style.display = "none";

  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  } 
  document.getElementById(menuName).style.display = "block";
}
