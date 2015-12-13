var draggable;

$(document).ready(function() {

  var maxHeight = 0;
  var maxWidth = 0;

  var doc = $(document);
  maxHeight = doc.height();
  maxWidth = doc.width();
  setInterval(function() {
    var doc = $(document);
    maxHeight = doc.height();
    maxWidth = doc.width();
  }, 1000);

  $('body').css({"background-color": "rgb(119, 119, 119)"})
 

// target elements with the "draggable" class
interact('.draggable')
  .draggable({
    // enable inertial throwing
    inertia: true,
    // keep the element within the area of it's parent
    restrict: {
      restriction: "parent",
      endOnly: true,
      elementRect: { top: 0, left: 0, bottom: 1, right: 1 }
    },
    // enable autoScroll
    autoScroll: true,

    // call this function on every dragmove event
    onmove: dragMoveListener,
    // call this function on every dragend event
    onend: function (event) {
      var textEl = event.target.querySelector('p');

      textEl && (textEl.textContent =
        'moved a distance of '
        + (Math.sqrt(event.dx * event.dx +
                     event.dy * event.dy)|0) + 'px');
    }
  });

  function dragMoveListener (event) {
    var target = event.target,
        // keep the dragged position in the data-x/data-y attributes
        x = (parseFloat(target.getAttribute('data-x')) || 0) + event.dx,
        y = (parseFloat(target.getAttribute('data-y')) || 0) + event.dy;

    // translate the element
    target.style.webkitTransform =
    target.style.transform =
      'translate(' + x + 'px, ' + y + 'px)';

    // update the posiion attributes
    target.setAttribute('data-x', x);
    target.setAttribute('data-y', y);
  }

  // this is used later in the resizing and gesture demos
  window.dragMoveListener = dragMoveListener;


var bHeight = $('body').height();
var bWidth = $('body').width();

// console.log($(".draggable").length);

draggable = $(".draggable");
var map = $('.map');
var mapHeight = map.height();
var mapWidth = map.width();

function getRandomZone(min, max) {
  var pos = Math.floor(Math.random() * (max - min + 1)) + min;
  console.log('hecticZone', min, max, pos);
  return pos;
}


function getRandomPosition(min, max) {
  var pos = Math.floor(Math.random() * (max - min + 1)) + min;
  console.log('hecticPos', min, max, pos);
  return pos;
}

for (var i = 0; i < draggable.length; i++) {
  var d1 = $(draggable[i])
  var dwidth = getRandomZone(0, (bWidth - d1.width()));
  var dheight = getRandomZone(0, (bHeight - d1.height()));

// ASK JACK AND JOEL ABOUT THIS LATER, PICS OFF SCREEN.


  var topMap = (bHeight / 2) - (mapHeight / 2);
  var botMap = (bHeight / 2) + (mapHeight / 2);
  var leftMap = (bWidth / 2) - (mapWidth / 2);
  var rightMap = (bWidth / 2) + (bWidth / 2);

  var zone = getRandomZone(0, 3);

  if (zone === 0) {
    dheight = getRandomPosition(0, topMap);
  } else if (zone === 1) {
    dwidth = getRandomPosition(0, leftMap);
  } else if (zone === 2) {
    dwidth = getRandomPosition(rightMap, bWidth);
  } else {
    dheight = getRandomPosition(botMap, bHeight);
  };
  console.log('zone', zone)

  d1.css({top: dheight, left: dwidth})
};





 // var testRand = function(iterations) {
 //  var res = {0: 0, 1: 0, 2: 0, 3: 0, 4: 0};
 //  for (var i = 0; i < iterations; i++){
 //    res[getRandomZone(0,3)] += 1;
 //  }
 //  console.log(res)
 // }
 // testRand(10000);

























});