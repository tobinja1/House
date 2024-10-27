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

var toggleBool = false;
var pitchBool = false;
var cropBool = false;
var feedbackBool = false;

var record1 = document.getElementById("record1");
var record2 = document.getElementById("record2");
var record3 = document.getElementById("record3");
var record4 = document.getElementById("record4");
var record5 = document.getElementById("record5");
var record6 = document.getElementById("record6");
var record7 = document.getElementById("record7");
var record8 = document.getElementById("record8");

var toggleButton = document.getElementById("toggle");
var pitchButton = document.getElementById("pitch");
var cropButton = document.getElementById("crop");
var feedbackButton = document.getElementById("feedback");

var recordToggle;
var loopToggle;
var playToggle;
var device;

//how long it takes to trigger record mode
var recordLength = 250;

document.querySelectorAll('input[type=checkbox]').forEach(el => el.checked = false);

const setup = async () => {
    const patcherRequest = new Request("assets/rnbo/recorder.json");
	const patcherResponse = await fetch(patcherRequest);
	const patcher = await patcherResponse.json();

    device = await createDevice({ context, patcher });
    
    const stream = await navigator.mediaDevices.getUserMedia({ audio: true });
    // Create gain node and connect it to audio output
    const source = context.createMediaStreamSource(stream);
  
    playToggle = device.parametersById.get("playBang");
    recordToggle = device.parametersById.get("recordToggle");
    loopToggle = device.parametersById.get("loopToggle");

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

    ///rec1



    record1.addEventListener('touchstart', function() {
        if(record1Bool = true){
            record1.style.backgroundColor = "red";
            record1.style.color = "white";
        }
        else {
            record1.style.backgroundColor = "white";
            record1.style.color = "black";
        }
        record1Bool != record1Bool;
        console.log(record1Bool);
    })

    record1.addEventListener('click', function() {
        record1Bool = !record1Bool;
        if(record1Bool == true){
            record1.style.backgroundColor = "red";
            record1.style.color = "white";
        }
        else {
            record1.style.backgroundColor = "white";
            record1.style.color = "black";
        }
    })

    ///rec 2

    record2.addEventListener('touchstart', function() {
        if(record1Bool = true){
            record2.style.backgroundColor = "red";
            record2.style.color = "white";
        }
        else {
            record2.style.backgroundColor = "white";
            record2.style.color = "black";
        }
        record2Bool != record2Bool;
    })

    record2.addEventListener('click', function() {
        record2Bool = !record2Bool;
        if(record3Bool == true){
            record2.style.backgroundColor = "red";
            record2.style.color = "white";
        }
        else {
            record2.style.backgroundColor = "white";
            record2.style.color = "black";
        }
    })

    ////rec 3

    record3.addEventListener('touchstart', function() {
        if(record3Bool = true){
            record3.style.backgroundColor = "red";
            record3.style.color = "white";
        }
        else {
            record3.style.backgroundColor = "white";
            record3.style.color = "black";
        }
        record3Bool != record3Bool;
    })

    record3.addEventListener('click', function() {
        record3Bool = !record3Bool;
        if(record3Bool == true){
            record3.style.backgroundColor = "red";
            record3.style.color = "white";
        }
        else {
            record3.style.backgroundColor = "white";
            record3.style.color = "black";
        }
    })

    ////rec 4

    record4.addEventListener('touchstart', function() {
        if(record4Bool = true){
            record4.style.backgroundColor = "red";
            record4.style.color = "white";
        }
        else {
            record4.style.backgroundColor = "white";
            record4.style.color = "black";
        }
        record4Bool != record4Bool;
    })

    record4.addEventListener('click', function() {
        if(record4Bool = true){
            record4.style.backgroundColor = "red";
            record4.style.color = "white";
        }
        else {
            record4.style.backgroundColor = "white";
            record4.style.color = "black";
        }
        record4Bool != record4Bool;
    })

    ///rec 5

    record5.addEventListener('touchstart', function() {
        if(record5Bool = true){
            record5.style.backgroundColor = "red";
            record5.style.color = "white";
        }
        else {
            record5.style.backgroundColor = "white";
            record5.style.color = "black";
        }
        record5Bool != record5Bool;
    })

    record5.addEventListener('click', function() {
        if(record5Bool = true){
            record5.style.backgroundColor = "red";
            record5.style.color = "white";
        }
        else {
            record5.style.backgroundColor = "white";
            record5.style.color = "black";
        }
        record5Bool != record5Bool;
    })

    //rec 6

    record6.addEventListener('touchstart', function() {
        if(record6Bool = true){
            record6.style.backgroundColor = "red";
            record6.style.color = "white";
        }
        else {
            record6.style.backgroundColor = "white";
            record6.style.color = "black";
        }
        record6Bool != record6Bool;
    })

    record6.addEventListener('click', function() {
        if(record6Bool = true){
            record6.style.backgroundColor = "red";
            record6.style.color = "white";
        }
        else {
            record6.style.backgroundColor = "white";
            record6.style.color = "black";
        }
        record6Bool != record6Bool;
    })

    ///rec 7

    record7.addEventListener('touchstart', function() {
        if(record7Bool = true){
            record7.style.backgroundColor = "red";
            record7.style.color = "white";
        }
        else {
            record7.style.backgroundColor = "white";
            record7.style.color = "black";
        }
        record7Bool != record7Bool;
    })

    record7.addEventListener('click', function() {
        if(record7Bool = true){
            record7.style.backgroundColor = "red";
            record7.style.color = "white";
        }
        else {
            record7.style.backgroundColor = "white";
            record7.style.color = "black";
        }
        record7Bool != record7Bool;
    })

    //rec 8

    record8.addEventListener('touchstart', function() {
        if(record8Bool = true){
            record8.style.backgroundColor = "red";
            record8.style.color = "white";
        }
        else {
            record8.style.backgroundColor = "white";
            record8.style.color = "black";
        }
        record8Bool != record8Bool;
    })

    record8.addEventListener('click', function() {
        if(record8Bool = true){
            record8.style.backgroundColor = "red";
            record8.style.color = "white";
        }
        else {
            record8.style.backgroundColor = "white";
            record8.style.color = "black";
        }
        record8Bool != record8Bool;
    })

    //toggles

    toggleButton.addEventListener('touchstart', function() {
        toggleBool = !toggleBool;
        if(toggleBool == true){
            toggleButton.style.backgroundColor = "gray";
            toggleButton.style.color = "white";
        }
        else {
            toggleButton.style.backgroundColor = "white";
            toggleButton.style.color = "gray";
        }
    })

    toggleButton.addEventListener('click', function() {
        toggleBool = !toggleBool;
        if(toggleBool == true){
            toggleButton.style.backgroundColor = "gray";
            toggleButton.style.color = "white";
        }
        else {
            toggleButton.style.backgroundColor = "white";
            toggleButton.style.color = "gray";
        }
    })

    pitchButton.addEventListener('touchstart', function() {
        pitchBool = !pitchBool;
        if(pitchBool == true){
            pitchButton.style.backgroundColor = "gray";
            pitchButton.style.color = "white";
        }
        else {
            pitchButton.style.backgroundColor = "white";
            pitchButton.style.color = "gray";
        }
    })

    pitchButton.addEventListener('click', function() {
        pitchBool = !pitchBool;
        if(pitchBool == true){
            pitchButton.style.backgroundColor = "gray";
            pitchButton.style.color = "white";
        }
        else {
            pitchButton.style.backgroundColor = "white";
            pitchButton.style.color = "gray";
        }
    })

    cropButton.addEventListener('touchstart', function() {
        cropBool = !cropBool;
        if(cropBool == true){
            cropButton.style.backgroundColor = "gray";
            cropButton.style.color = "white";
        }
        else {
            cropButton.style.backgroundColor = "white";
            cropButton.style.color = "gray";
        }
    })

    cropButton.addEventListener('click', function() {
        cropBool = !cropBool;
        if(cropBool == true){
            cropButton.style.backgroundColor = "gray";
            cropButton.style.color = "white";
        }
        else {
            cropButton.style.backgroundColor = "white";
            cropButton.style.color = "gray";
        }
    })

    feedbackButton.addEventListener('touchstart', function() {
        feedbackBool = !feedbackBool;
        if(feedbackBool == true){
            feedbackButton.style.backgroundColor = "gray";
            feedbackButton.style.color = "white";
        }
        else {
            feedbackButton.style.backgroundColor = "white";
            feedbackButton.style.color = "gray";
        }
    })

    feedbackButton.addEventListener('click', function() {
        feedbackBool = !feedbackBool;
        if(feedbackBool == true){
            feedbackButton.style.backgroundColor = "gray";
            feedbackButton.style.color = "white";
        }
        else {
            feedbackButton.style.backgroundColor = "white";
            feedbackButton.style.color = "gray";
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
