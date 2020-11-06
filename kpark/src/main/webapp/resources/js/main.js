$(document).ready(function () {
  var imgs = $('.cover');
  var position = 1;

  highlightBar(1,2,3);
  $('#bar1').click(function (e) { 
    if(position==2) {
      imgs.animate({
        left:'+=1280px'
      });
    } else if (position==3) {
      imgs.animate({
        left:'+=2560px'
      });
    } else {

    }
    position=1;
    highlightBar(1,2,3);
  });
  $('#bar2').click(function (e) { 
    if(position==1) {
      imgs.animate({
        left:'-=1280px'
      });
    } else if (position==3) {
      imgs.animate({
        left:'+=1280px'
      });
    } else {

    }
    position=2;
    highlightBar(2,1,3)
  });
  $('#bar3').click(function (e) { 
    if(position==1) {
      imgs.animate({
        left:'-=2560px'
      });
    } else if (position==2) {
      imgs.animate({
        left:'-=1280px'
      });
    } else {

    }
    position=3;
    highlightBar(3,1,2);
  });
});

function highlightBar(num, num2, num3) {
  var bar = document.getElementById("bar"+num);
  var p = bar.getElementsByTagName("p");
  p.item(0).style.color = "white";
  p.item(1).style.color = "white";
  var div = bar.getElementsByTagName("div");
  div.item(0).style.backgroundColor = "white";

  var bar = document.getElementById("bar"+num2);
  var p = bar.getElementsByTagName("p");
  p.item(0).style.color = "gray";
  p.item(1).style.color = "gray";
  var div = bar.getElementsByTagName("div");
  div.item(0).style.backgroundColor = "gray";

  var bar = document.getElementById("bar"+num3);
  var p = bar.getElementsByTagName("p");
  p.item(0).style.color = "gray";
  p.item(1).style.color = "gray";
  var div = bar.getElementsByTagName("div");
  div.item(0).style.backgroundColor = "gray"; 
}