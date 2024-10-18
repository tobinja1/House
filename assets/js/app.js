// Get createDevice from the rnbo.js library
const { createDevice } = RNBO;

// Create AudioContext
let WAContext = window.AudioContext || window.webkitAudioContext;
let context = new WAContext();

const setup = async () => {
    let rawPatcher = await fetch("assets/rnbo/recorder.json");
    let patcher = await rawPatcher.json();

    var device = await createDevice({ context, patcher });
    
    const stream = await navigator.mediaDevices.getUserMedia({ audio: true });
    // Create gain node and connect it to audio output
    const source = context.createMediaStreamSource(stream);

    var recordCheckbox = document.getElementById("record-checkbox");
    var recordValue = 0;

    function record() {
        if(recordCheckbox.checked == true) {
            console.log("checked");
            recordValue = 1;
        }
        else {
            console.log("unchecked");
            recordValue = 0;

        }
    }
  
  
    recordToggle = device.parametersById.get("recordToggle");
    recordToggle.value = recordValue;
    // This connects the device to audio output, but you may still need to call context.resume()
    // from a user-initiated function.
    source.connect(device.node);
    
    device.node.connect(context.destination);
    context.suspend();
};

// We can't await an asynchronous function at the top level, so we create an asynchronous
// function setup, and then call it without waiting for the result.
setup();


function startAudio() {
  context.resume();
}

startAudio();
