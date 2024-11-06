// Get createDevice from the rnbo.js library
const { createDevice } = RNBO;

// Create AudioContext
var WAContext = window.AudioContext || window.webkitAudioContext;
var context = new WAContext();

// var recordButton = document.getElementById("record-button");
// var playButton = document.getElementById("play-button");
// var loopCheckbox = document.getElementById("loop-checkbox");

var totalRecords = 8;

var record1Bool = false;
var record2Bool = false;
var record3Bool = false;
var record4Bool = false;
var record5Bool = false;
var record6Bool = false;
var record7Bool = false;
var record8Bool = false;

var p1Bool = false;
var p2Bool = false;
var p3Bool = false;
var p4Bool = false;
var p5Bool = false;
var p6Bool = false;
var p7Bool = false;
var p8Bool = false;


var toggleBool = false;
var pitchBool = false;
var cropBool = false;
var feedbackBool = false;

var pressed = 0;

var record1 = document.getElementById("record1");
var record2 = document.getElementById("record2");
var record3 = document.getElementById("record3");
var record4 = document.getElementById("record4");
var record5 = document.getElementById("record5");
var record6 = document.getElementById("record6");
var record7 = document.getElementById("record7");
var record8 = document.getElementById("record8");

var play1 = document.getElementById("play1");
var play2 = document.getElementById("play2");
var play3 = document.getElementById("play3");
var play4 = document.getElementById("play4");
var play5 = document.getElementById("play5");
var play6 = document.getElementById("play6");
var play7 = document.getElementById("play7");
var play8 = document.getElementById("play8");

var toggleButton = document.getElementById("toggle");
var pitchButton = document.getElementById("pitch");
var cropButton = document.getElementById("crop");
var feedbackButton = document.getElementById("feedback");

var recordToggle;
var loopToggle;
var playToggle;
var device;

var dragContainer = document.getElementById("drag-container");
var dragContainerBoundingRect = dragContainer.getBoundingClientRect();
var thumbDrag = document.getElementById("thumb-drag");
var thumbWidth = 50;

var adjClientX = 0;
var adjClientY = 0;

//how long it takes to trigger record mode
// var recordLength = 250;

console.log(dragContainer.getBoundingClientRect())

const setup = async () => {
    const patcherRequest = new Request("assets/rnbo/houseVer2.json");
	const patcherResponse = await fetch(patcherRequest);
	const patcher = await patcherResponse.json();

    device = await createDevice({ context, patcher });
    
    const stream = await navigator.mediaDevices.getUserMedia({ audio: true });
    // Create gain node and connect it to audio output
    const source = context.createMediaStreamSource(stream);

    r1 = device.parametersById.get("r1");
    r2 = device.parametersById.get("r2");
    r3 = device.parametersById.get("r3");
    r4 = device.parametersById.get("r4");
    r5 = device.parametersById.get("r5");
    r6 = device.parametersById.get("r6");
    r7 = device.parametersById.get("r7");
    r8 = device.parametersById.get("r8");

    p1 = device.parametersById.get("p1");
    p2 = device.parametersById.get("p2");
    p3 = device.parametersById.get("p3");
    p4 = device.parametersById.get("p4");
    p5 = device.parametersById.get("p5");
    p6 = device.parametersById.get("p6");
    p7 = device.parametersById.get("p7");
    p8 = device.parametersById.get("p8");

    toggleParam = device.parametersById.get("toggleParam");
    pitchParam = device.parametersById.get("pitchParam");
    cropParam = device.parametersById.get("cropParam");
    feedbackParam = device.parametersById.get("feedbackParam");

    source.connect(device.node);
    
    device.node.connect(context.destination);

    // playButton.addEventListener('touchstart', function (){
    //     playToggle.value = 1;
    //     playToggle.value = 0;
    // });

    // playButton.addEventListener('click', function (){
    //     playToggle.value = 1;
    //     playToggle.value = 0;
    // });

    //   loopCheckbox.addEventListener('change', function() {
    //     if (this.checked) {
    //         loopToggle.value = 1;
    //     } else {
    //         loopToggle.value = 0;
    //     }
    //   });

    //thumb dragging

    function dragging(e) {
        if(pressed == true && e.clientX >= dragContainerBoundingRect.left && e.clientX <= dragContainerBoundingRect.right - thumbWidth && e.clientY >= dragContainerBoundingRect.top + thumbWidth*0.75 && e.clientY <= dragContainerBoundingRect.bottom - thumbWidth*0.25){
            adjClientX = e.clientX/dragContainerBoundingRect.right;
            adjClientY = e.clientY/dragContainerBoundingRect.bottom;
            thumbDrag.style.left = `${e.clientX - thumbWidth*1.5}px`;
            thumbDrag.style.top = `${e.clientY - thumbWidth*1.5}px`;
            console.log(adjClientX);
            console.log(adjClientY);
        }
    }

    dragContainer.addEventListener('mousedown', function(){
        pressed = true;
        console.log(pressed);
    });

    dragContainer.addEventListener('mouseup', function(){
        pressed = false;
    });
    dragContainer.addEventListener('mousemove', dragging);

    dragContainer.addEventListener('touchstart', function(){
        pressed = true;
        console.log(pressed);
    });

    dragContainer.addEventListener('touchend', function(){
        pressed = false;
    });
    dragContainer.addEventListener('touchmove', dragging);

    ///rec1

    // record1.addEventListener('touchstart', function() {
    //     if(record1Bool = true){
    //         record1.style.backgroundColor = "red";
    //         record1.style.color = "white";
    //         r1.value = 1;
    //     }
    //     else {
    //         record1.style.backgroundColor = "white";
    //         record1.style.color = "black";
    //         r1.value = 0;
    //     }
    //     record1Bool != record1Bool;
    //     console.log(record1Bool);
    // })

    // record1.addEventListener('click', function() {
    //     record1Bool = !record1Bool;
    //     if(record1Bool == true){
    //         record1.style.backgroundColor = "red";
    //         record1.style.color = "white";
    //         r1.value = 1;
    //     }
    //     else {
    //         record1.style.backgroundColor = "white";
    //         record1.style.color = "black";
    //         r1.value = 0;
    //     }
    // })

    record1.addEventListener('mousedown', function(){
        recordOnToggle(record1Bool, r1, record1);
    });
    record1.addEventListener('mouseup', function(){
        recordOffToggle(r1, record1);
    });

    ///rec 2

    record2.addEventListener('touchstart', function() {
        if(record2Bool = true){
            record2.style.backgroundColor = "red";
            record2.style.color = "white";
            r2.value = 1;
        }
        else {
            record2.style.backgroundColor = "white";
            record2.style.color = "black";
            r2.value = 0;
        }
        record2Bool != record2Bool;
    })

    record2.addEventListener('click', function() {
        record2Bool = !record2Bool;
        if(record3Bool == true){
            record2.style.backgroundColor = "red";
            record2.style.color = "white";
            r2.value = 1;
        }
        else {
            record2.style.backgroundColor = "white";
            record2.style.color = "black";
            r2.value = 0;
        }
    })

    ////rec 3

    record3.addEventListener('touchstart', function() {
        if(record3Bool = true){
            record3.style.backgroundColor = "red";
            record3.style.color = "white";
            r3.value = 1;
        }
        else {
            record3.style.backgroundColor = "white";
            record3.style.color = "black";
            r3.value = 0;
        }
        record3Bool != record3Bool;
    })

    record3.addEventListener('click', function() {
        record3Bool = !record3Bool;
        if(record3Bool == true){
            record3.style.backgroundColor = "red";
            record3.style.color = "white";
            r3.value = 1;
        }
        else {
            record3.style.backgroundColor = "white";
            record3.style.color = "black";
            r3.value = 0;
        }
    })

    ////rec 4

    record4.addEventListener('touchstart', function() {
        if(record4Bool = true){
            record4.style.backgroundColor = "red";
            record4.style.color = "white";
            r4.value = 1;
        }
        else {
            record4.style.backgroundColor = "white";
            record4.style.color = "black";
            r4.value = 0;
        }
        record4Bool != record4Bool;
    })

    record4.addEventListener('click', function() {
        if(record4Bool = true){
            record4.style.backgroundColor = "red";
            record4.style.color = "white";
            r4.value = 1;
        }
        else {
            record4.style.backgroundColor = "white";
            record4.style.color = "black";
            r4.value = 0;
        }
        record4Bool != record4Bool;
    })

    ///rec 5

    record5.addEventListener('touchstart', function() {
        if(record5Bool = true){
            record5.style.backgroundColor = "red";
            record5.style.color = "white";
            r5.value = 1;
        }
        else {
            record5.style.backgroundColor = "white";
            record5.style.color = "black";
            r5.value = 0;
        }
        record5Bool != record5Bool;
    })

    record5.addEventListener('click', function() {
        if(record5Bool = true){
            record5.style.backgroundColor = "red";
            record5.style.color = "white";
            r5.value = 1;
        }
        else {
            record5.style.backgroundColor = "white";
            record5.style.color = "black";
            r5.value = 0;
        }
        record5Bool != record5Bool;
    })

    //rec 6

    record6.addEventListener('touchstart', function() {
        if(record6Bool = true){
            record6.style.backgroundColor = "red";
            record6.style.color = "white";
            r6.value = 1;
        }
        else {
            record6.style.backgroundColor = "white";
            record6.style.color = "black";
            r6.value = 0;
        }
        record6Bool != record6Bool;
    })

    record6.addEventListener('click', function() {
        if(record6Bool = true){
            record6.style.backgroundColor = "red";
            record6.style.color = "white";
            r6.value = 1;
        }
        else {
            record6.style.backgroundColor = "white";
            record6.style.color = "black";
            r6.value = 0;
        }
        record6Bool != record6Bool;
    })

    ///rec 7

    record7.addEventListener('touchstart', function() {
        if(record7Bool = true){
            record7.style.backgroundColor = "red";
            record7.style.color = "white";
            r7.value = 1;
        }
        else {
            record7.style.backgroundColor = "white";
            record7.style.color = "black";
            r7.value = 0;
        }
        record7Bool != record7Bool;
    })

    record7.addEventListener('click', function() {
        if(record7Bool = true){
            record7.style.backgroundColor = "red";
            record7.style.color = "white";
            r7.value = 1;
        }
        else {
            record7.style.backgroundColor = "white";
            record7.style.color = "black";
            r7.value = 0;
        }
        record7Bool != record7Bool;
    })

    //rec 8

    record8.addEventListener('touchstart', function() {
        if(record8Bool = true){
            record8.style.backgroundColor = "red";
            record8.style.color = "white";
            r8.value = 1;
        }
        else {
            record8.style.backgroundColor = "white";
            record8.style.color = "black";
            r8.value = 0;
        }
        record8Bool != record8Bool;
    })

    record8.addEventListener('click', function() {
        if(record8Bool = true){
            record8.style.backgroundColor = "red";
            record8.style.color = "white";
            r8.value = 1;
        }
        else {
            record8.style.backgroundColor = "white";
            record8.style.color = "black";
            r8.value = 0;
        }
        record8Bool != record8Bool;
    })

    function recordOnToggle(targetBool, targetValue, targetElement){
        if(toggleBool == true){
            targetBool = !targetBool;
            if(targetBool == true){
                targetElement.style.backgroundColor = "red";
                targetElement.style.color = "white";
                targetValue.value = 1;
            }
            else {
                targetElement.style.backgroundColor = "white";
                targetElement.style.color = "black";
                targetValue.value = 0;
            }
        }
        else if(toggleBool == false){
            targetElement.style.backgroundColor = "red";
            targetElement.style.color = "white";
            targetValue.value = 1;
        }
    }

    function recordOffToggle(targetValue, targetElement){
        if(toggleBool == true){
            console.log("on");
        }
        else if(toggleBool == false){
            targetElement.style.backgroundColor = "white";
            targetElement.style.color = "black";
            targetValue.value = 0;
        }
    }

    //play buttons

    //play1

    play1.addEventListener('touchstart', function(){
        if(toggleBool == true){
            p1Bool = !p1Bool;
            if(p1Bool == true){
                p1.value = 1;
            }
            else{
                p1.value = 0;
            }
        }
        else if(toggleBool == false){
            p1.value = 1;
        }

    })
    play1.addEventListener('touchend', function(){
        if(toggleBool == true){
            console.log("on");
        }
        else if(toggleBool == false){
            p1.value = 0;
        }
    })
    // play1.addEventListener('mousedown', function(){
    //     if(toggleBool == true){
    //         p1Bool = !p1Bool;
    //         if(p1Bool == true){
    //             p1.value = 1;
    //         }
    //         else{
    //             p1.value = 0;
    //         }
    //     }
    //     else if(toggleBool == false){
    //         p1.value = 1;
    //     }

    // })
    // play1.addEventListener('mouseup', function(){
    //     if(toggleBool == true){
    //         console.log("on");
    //     }
    //     else if(toggleBool == false){
    //         p1.value = 0;
    //     }
    // })


    play1.addEventListener('touchstart', function(){
        playOnToggling(p1Bool, p1);
    })
    play1.addEventListener('touchend', function(){
        playOffToggling(p1);
    })
    play1.addEventListener('mousedown', function(){
        playOnToggling(p1Bool, p1);
    })
    play1.addEventListener('mouseup', function(){
        playOffToggling(p1);
    })

    //play2

    play2.addEventListener('mousedown', function(){
        playOnToggling(p2Bool, p2);
    })
    play2.addEventListener('mouseup', function(){
        playOffToggling(p2);
    })

    //play3

    function playOnToggling(targetBool, targetValue){
        if(toggleBool == true){
            targetBool = !targetBool;
            if(targetBool == true){
                targetValue.value = 1;
            }
            else{
                targetValue.value = 0;
            }
        }
        else if(toggleBool == false){
            targetValue.value = 1;
        }
    }

    function playOffToggling(targetValue){
        if(toggleBool == true){
            console.log("on");
        }
        else if(toggleBool == false){
            targetValue.value = 0;
        }
    }


    //toggles

    toggleButton.addEventListener('touchstart', function() {
        toggleBool = !toggleBool;
        if(toggleBool == true){
            toggleButton.style.backgroundColor = "gray";
            toggleButton.style.color = "white";
            toggleParam.value = 1;
        }
        else {
            toggleButton.style.backgroundColor = "white";
            toggleButton.style.color = "gray";
            toggleParam.value = 0;
        }
    })

    toggleButton.addEventListener('click', function() {
        toggleBool = !toggleBool;
        if(toggleBool == true){
            toggleButton.style.backgroundColor = "gray";
            toggleButton.style.color = "white";
            toggleParam.value = 1;
        }
        else {
            toggleButton.style.backgroundColor = "white";
            toggleButton.style.color = "gray";
            toggleParam.value = 0;
        }
    })

    pitchButton.addEventListener('touchstart', function() {
        pitchBool = !pitchBool;
        if(pitchBool == true){
            pitchButton.style.backgroundColor = "gray";
            pitchButton.style.color = "white";
            pitchParam.value = 1;
        }
        else {
            pitchButton.style.backgroundColor = "white";
            pitchButton.style.color = "gray";
            pitchParam.value = 0;
        }
    })

    pitchButton.addEventListener('click', function() {
        pitchBool = !pitchBool;
        if(pitchBool == true){
            pitchButton.style.backgroundColor = "gray";
            pitchButton.style.color = "white";
            pitchParam.value = 1;
        }
        else {
            pitchButton.style.backgroundColor = "white";
            pitchButton.style.color = "gray";
            pitchParam.value = 0;
        }
    })

    cropButton.addEventListener('touchstart', function() {
        cropBool = !cropBool;
        if(cropBool == true){
            cropButton.style.backgroundColor = "gray";
            cropButton.style.color = "white";
            cropParam.value = 1;
        }
        else {
            cropButton.style.backgroundColor = "white";
            cropButton.style.color = "gray";
            cropParam.value = 0;
        }
    })

    cropButton.addEventListener('click', function() {
        cropBool = !cropBool;
        if(cropBool == true){
            cropButton.style.backgroundColor = "gray";
            cropButton.style.color = "white";
            cropParam.value = 1;
        }
        else {
            cropButton.style.backgroundColor = "white";
            cropButton.style.color = "gray";
            cropParam.value = 0;
        }
    })

    feedbackButton.addEventListener('touchstart', function() {
        feedbackBool = !feedbackBool;
        if(feedbackBool == true){
            feedbackButton.style.backgroundColor = "gray";
            feedbackButton.style.color = "white";
            feedbackParam.value = 1;
        }
        else {
            feedbackButton.style.backgroundColor = "white";
            feedbackButton.style.color = "gray";
            feedbackParam.value = 0;
        }
    })

    feedbackButton.addEventListener('click', function() {
        feedbackBool = !feedbackBool;
        if(feedbackBool == true){
            feedbackButton.style.backgroundColor = "gray";
            feedbackButton.style.color = "white";
            feedbackParam.value = 1;
        }
        else {
            feedbackButton.style.backgroundColor = "white";
            feedbackButton.style.color = "gray";
            feedbackParam.value = 0;
        }
    })



    function boolToggle(target, innerBool) {
        innerBool =! innerBool;
        if(innerBool == true){
            target.style.backgroundColor = "gray";
            target.style.color = "white";
        }
        else {
            record1.style.backgroundColor = "white";
            record1.style.color = "gray";
        }
    }

      //the longpress function

    //   (function() {

    //     var mouseTimer;
    //     function mouseDown() { 
    //         mouseUp();
    //         mouseTimer = window.setTimeout(execMouseDown,recordLength); //set timeout to fire in 2 seconds when the user presses mouse button down
    //     }
      
    //     function mouseUp() { 
    //         if (mouseTimer) window.clearTimeout(mouseTimer);  //cancel timer when mouse button is released
    //         recordToggle.value = 0;
    //         recordButton.style.background = "linear-gradient(0.25turn, red, white 0%)"
    //     }
      
    //     function execMouseDown() { 
    //         recordToggle.value = 1;
    //         recordButton.style.background = "linear-gradient(0.25turn, red, white 100%)"
    //     }
    //     recordButton.addEventListener("mousedown", mouseDown);
    //     document.body.addEventListener("mouseup", mouseUp);  //listen for mouse up event on body, not just the element you originally clicked on
        
    //   }());


    context.resume();
};

setup();

function startAudio() {
  context.resume();
}

startAudio();
