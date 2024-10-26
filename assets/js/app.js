// Get createDevice from the rnbo.js library
const { createDevice } = RNBO;

// Create AudioContext
var WAContext = window.AudioContext || window.webkitAudioContext;
var context = new WAContext();

var recordButton = document.getElementById("record-button");
var playButton = document.getElementById("play-button");
var loopCheckbox = document.getElementById("loop-checkbox");
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

    playButton.addEventListener('touchstart', function (){
        playToggle.value = 1;
        playToggle.value = 0;
    });

    playButton.addEventListener('click', function (){
        playToggle.value = 1;
        playToggle.value = 0;
    });

      loopCheckbox.addEventListener('change', function() {
        if (this.checked) {
            loopToggle.value = 1;
        } else {
            loopToggle.value = 0;
        }
      });

      //the longpress function

      (function() {

        var mouseTimer;
        function mouseDown() { 
            mouseUp();
            mouseTimer = window.setTimeout(execMouseDown,recordLength); //set timeout to fire in 2 seconds when the user presses mouse button down
        }
      
        function mouseUp() { 
            if (mouseTimer) window.clearTimeout(mouseTimer);  //cancel timer when mouse button is released
            recordToggle.value = 0;
            recordButton.style.background = "linear-gradient(0.25turn, red, white 0%)"
        }
      
        function execMouseDown() { 
            recordToggle.value = 1;
            recordButton.style.background = "linear-gradient(0.25turn, red, white 100%)"
        }
        recordButton.addEventListener("mousedown", mouseDown);
        document.body.addEventListener("mouseup", mouseUp);  //listen for mouse up event on body, not just the element you originally clicked on
        
      }());

    context.resume();
};

setup();

function startAudio() {
  context.resume();
}

startAudio();
