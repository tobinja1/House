var recordCheckbox = document.getElementById("record-checkbox");
var recordValue = 0;

function record(){
    if(recordCheckbox.checked == true) {
        console.log("checked");
        recordValue = 1;
    }
    else {
        console.log("unchecked");
        recordValue = 0;
    }
}

(async () => {
  
    const ctx = new (window.AudioContext || window.webkitAudioContext)();
    const response = await fetch("/assets/rnbo/recorder.json");
    const patcher = await response.json();
    let setup = false;
    
    const device = await RNBO.createDevice({
      context: ctx,
      patcher
    });
    
    const run = async () => {
      if (setup) return;
      setup = true;
      ctx.resume();
  
      try {
        // Access user's microphone
        const stream = await navigator.mediaDevices.getUserMedia({ audio: true, video: false });
        
        // Create Media Stream source
        const source = ctx.createMediaStreamSource(stream);
        
        // Connect source to RNBO Device
        source.connect(device.node);
        
        // Connect RNBO Device to destination output
        device.node.connect(ctx.destination);
        
      } catch (err) {
        console.log(err);
      }
    };
    
    const onGainChange = (e) => device.parametersById.get(e.currentTarget.name).normalizedValue = parseFloat(e.currentTarget.value);
    
    document.querySelector("#start").onclick = run;
    document.querySelector("#gain").onchange = onGainChange;
  })();