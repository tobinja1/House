// Get createDevice from the rnbo.js library
const { createDevice } = RNBO;

// Create AudioContext
var WAContext = window.AudioContext || window.webkitAudioContext;
var context = new WAContext();

var recordCheckbox = document.getElementById("record-checkbox");
var loopCheckbox = document.getElementById("loop-checkbox");
var recordToggle;
var loopToggle;
var device;

const setup = async () => {
    const patcherRequest = new Request("assets/rnbo/recorder.json");
	const patcherResponse = await fetch(patcherRequest);
	const patcher = await patcherResponse.json();

    device = await createDevice({ context, patcher });
    
    const stream = await navigator.mediaDevices.getUserMedia({ audio: true });
    // Create gain node and connect it to audio output
    const source = context.createMediaStreamSource(stream);
  
    recordToggle = device.parametersById.get("recordToggle");
    loopToggle = device.parametersById.get("loopToggle");

    source.connect(device.node);
    
    device.node.connect(context.destination);

    recordCheckbox.addEventListener('change', function() {
        if (this.checked) {
            recordToggle.value = 1;
        } else {
            recordToggle.value = 0;
        }
      });

      loopCheckbox.addEventListener('change', function() {
        if (this.checked) {
            loopToggle.value = 1;
        } else {
            loopToggle.value = 0;
        }
      });

    context.resume();
};

setup();

function startAudio() {
  context.resume();
}

startAudio();
