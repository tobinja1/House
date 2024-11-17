// Get createDevice from the rnbo.js library
const { createDevice } = RNBO;

// Create AudioContext
var WAContext = window.AudioContext || window.webkitAudioContext;
var context = new WAContext();

var totalRecords = 8;

var playPressedColor = "rgba(0,103,238,0.2)";

var record1Bool = false;
var record2Bool = false;
var record3Bool = false;
var record4Bool = false;
var record5Bool = false;
var record6Bool = false;
var record7Bool = false;
var record8Bool = false;

var recordBools = [false, false, false, false, false, false, false, false];
var playBools = [false, false, false, false, false, false, false, false];

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

var playButtons = document.querySelectorAll(".play-button");

var toggleButton = document.getElementById("toggle");
var pitchButton = document.getElementById("pitch");
var cropButton = document.getElementById("crop");
var feedbackButton = document.getElementById("feedback");

var recordToggle;
var loopToggle;
var playToggle;
var device;

//effects logic

var dragContainer = document.getElementById("drag-container");
var dragContainerBoundingRect = dragContainer.getBoundingClientRect();
var thumbDrag = document.getElementById("thumb-drag");
var thumbWidth = 50;

var adjClientX = 0;
var adjClientY = 0;
var scaledX = 0;
var scaledY = 0;

var effect1circlePos = [1,1];
var effect2circlePos = [1,0];
var effect3circlePos = [0,1];
var effect4circlePos = [0,0];
var deadZoneCirclePos = [0.5, 0.5];

var effect1Dist = 0;
var effect2Dist = 0;
var effect3Dist = 0;
var effect4Dist = 0;
var deadZoneDist = 0;

var effectCircleRadius = 0.75;
var deadZoneCircleRadius = 0.125;

var effect1dry = 0;
var effect2dry = 0;
var effect3dry = 0;
var effect4dry = 0;

console.log(dragContainer.getBoundingClientRect())

const setup = async () => {

    let response = await fetch("assets/rnbo/houseVer3.json");
    const devicePatch = await response.json();
    response = await fetch("assets/rnbo/houseDelay.json");
    const effect1Patch = await response.json();
    response = await fetch("assets/rnbo/houseReverbEffect.json");
    const effect2Patch = await response.json();
    response = await fetch("assets/rnbo/houseFlanger.json");
    const effect3Patch = await response.json();
    response = await fetch("assets/rnbo/houseCrush.json");
    const effect4Patch = await response.json();

    device = await createDevice({ context, patcher : devicePatch });

    effect1 = await createDevice({ context, patcher : effect1Patch });
    effect2 = await createDevice({ context, patcher : effect2Patch });
    effect3 = await createDevice({ context, patcher : effect3Patch });
    effect4 = await createDevice({ context, patcher : effect4Patch });
    
    const stream = await navigator.mediaDevices.getUserMedia({ audio: true });
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

    //getting effects params
    effect1dry = effect1.parametersById.get("dryWet");
    effect2dry = effect2.parametersById.get("dryWet");
    effect3dry = effect3.parametersById.get("dryWet");
    effect4dry = effect4.parametersById.get("dryWet");

    source.connect(device.node);

    device.node.connect(effect1.node);
    effect1.node.connect(effect2.node);
    effect2.node.connect(effect3.node);
    effect3.node.connect(effect4.node);
    effect4.node.connect(context.destination);

    function clamp(num, min, max) {
        return Math.max(min, Math.min(num, max));
      }

    function distance(x1, y1, x2, y2) {
        const dx = x2 - x1;
        const dy = y2 - y1;
        return Math.sqrt(dx * dx + dy * dy);
      }

    function dragging(e) {
        if(pressed == true && e.pageX >= dragContainerBoundingRect.left && e.pageX <= dragContainerBoundingRect.right - thumbWidth && e.pageY >= dragContainerBoundingRect.top + thumbWidth*0.75 && e.pageY <= dragContainerBoundingRect.bottom - thumbWidth*0.25){
            adjClientX = e.pageX/dragContainerBoundingRect.right;
            adjClientY = e.pageY/dragContainerBoundingRect.bottom;
            thumbDrag.style.left = `${e.pageX - thumbWidth*1.5}px`;
            thumbDrag.style.top = `${e.pageY - thumbWidth*1.5}px`;

            effect1Dist = distance(adjClientX, adjClientY, effect1circlePos[0], effect1circlePos[1]);
            effect2Dist = distance(adjClientX, adjClientY, effect2circlePos[0], effect2circlePos[1]);
            effect3Dist = distance(adjClientX, adjClientY, effect3circlePos[0], effect3circlePos[1]);
            effect4Dist = distance(adjClientX, adjClientY, effect4circlePos[0], effect4circlePos[1]);
            deadZoneDist = distance(adjClientX, adjClientY, deadZoneCirclePos[0], deadZoneCirclePos[1]);

            if(effect1Dist <= effectCircleRadius){
                effect1dry.value = 1 - (effect1Dist/effectCircleRadius);
            }
            else{
                effect1dry.value = 0;
            }

            if(effect2Dist <= effectCircleRadius){
                effect2dry.value = 1 - (effect2Dist/effectCircleRadius);
            }
            else{
                effect2dry.value = 0;
            }

            if(effect3Dist <= effectCircleRadius){
                effect3dry.value = 1 - (effect3Dist/effectCircleRadius);
            }
            else{
                effect3dry.value = 0;
            }

            if(effect4Dist <= effectCircleRadius){
                effect4dry.value = 1 - (effect4Dist/effectCircleRadius);
            }
            else{
                effect4dry.value = 0;
            }

            if(deadZoneDist <= deadZoneCircleRadius){
                effect1dry.value = 0;
                effect2dry.value = 0;
                effect3dry.value = 0;
                effect4dry.value = 0;
                console.log("dead")
            }
            else {
                console.log("live");
            }
        }
    }

    function draggingMobile(e) {
        if(e.pageX >= dragContainerBoundingRect.left && e.pageX <= dragContainerBoundingRect.right - thumbWidth && e.pageY >= dragContainerBoundingRect.top && e.pageY <= dragContainerBoundingRect.bottom){
            adjClientX = e.pageX/dragContainerBoundingRect.right;
            adjClientY = e.pageY/dragContainerBoundingRect.bottom;
            thumbDrag.style.left = `${e.pageX - thumbWidth*1.5}px`;
            thumbDrag.style.top = `${e.pageY - thumbWidth*1.5}px`;

            effect1Dist = distance(adjClientX, adjClientY, effect1circlePos[0], effect1circlePos[1]);
            effect2Dist = distance(adjClientX, adjClientY, effect2circlePos[0], effect2circlePos[1]);
            effect3Dist = distance(adjClientX, adjClientY, effect3circlePos[0], effect3circlePos[1]);
            effect4Dist = distance(adjClientX, adjClientY, effect4circlePos[0], effect4circlePos[1]);
            deadZoneDist = distance(adjClientX, adjClientY, deadZoneCirclePos[0], deadZoneCirclePos[1]);

            if(effect1Dist <= effectCircleRadius){
                effect1dry.value = 1 - (effect1Dist/effectCircleRadius);
            }
            else{
                effect1dry.value = 0;
            }

            if(effect2Dist <= effectCircleRadius){
                effect2dry.value = 1 - (effect2Dist/effectCircleRadius);
            }
            else{
                effect2dry.value = 0;
            }

            if(effect3Dist <= effectCircleRadius){
                effect3dry.value = 1 - (effect3Dist/effectCircleRadius);
            }
            else{
                effect3dry.value = 0;
            }

            if(effect4Dist <= effectCircleRadius){
                effect4dry.value = 1 - (effect4Dist/effectCircleRadius);
            }
            else{
                effect4dry.value = 0;
            }

            if(deadZoneDist <= deadZoneCircleRadius){
                effect1dry.value = 0;
                effect2dry.value = 0;
                effect3dry.value = 0;
                effect4dry.value = 0;
                console.log("dead")
            }
            else {
                console.log("live");
            }
        }
    }

    dragContainer.addEventListener('mousedown', function(){
        pressed = true;
    });

    dragContainer.addEventListener('mousedown', dragging);

    dragContainer.addEventListener('mouseup', function(){
        pressed = false;
    });

    dragContainer.addEventListener('mousemove', dragging);
    dragContainer.addEventListener('touchmove', draggingMobile);

    // dragContainer.addEventListener('touchstart', function(){
    //     pressed = true;
    // });

    // dragContainer.addEventListener('touchend', function(){
    //     pressed = false;
    // });
    // dragContainer.addEventListener('touchmove', dragging);

    //record1

    // record1.addEventListener('touchstart', function(){
    //     recordOnToggle(0, r1, record1);
    // });
    // record1.addEventListener('touchend', function(){
    //     recordOffToggle(r1, record1);
    // });
    // record1.addEventListener('mousedown', function(){
    //     recordOnToggle(0, r1, record1);
    // });
    // record1.addEventListener('mouseup', function(){
    //     recordOffToggle(r1, record1);
    // });

    record1.addEventListener('click', function(){
        recordingToggle(0, r1, record1);
    })

    record2.addEventListener('click', function(){
        recordingToggle(1, r2, record2);
    });

    record3.addEventListener('click', function(){
        recordingToggle(2, r3, record3);
    });


    record4.addEventListener('click', function(){
        recordingToggle(3, r4, record4);
    });

    record5.addEventListener('click', function(){
        recordingToggle(4, r5, record5);
    });

    record6.addEventListener('click', function(){
        recordingToggle(5, r6, record6);
    });

    record7.addEventListener('mouseup', function(){
        recordingToggle(6, r7, record7);
    });

    record8.addEventListener('mouseup', function(){
        recordingToggle(7, r8, record8);
    });

    function recordingToggle(targetBool, targetValue, targetElement){
        recordBools[targetBool] =! recordBools[targetBool]
            if(recordBools[targetBool] == true){
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

    //play buttons

    //play1

    // play1.addEventListener('touchstart', function(){
    //     playOnToggling(0, p1, play1);
    // })
    // play1.addEventListener('touchend', function(){
    //     playOffToggling(p1, play1);
    // })
    play1.addEventListener('mousedown', function(){
        playOnToggling(0, p1, play1);
    })
    play1.addEventListener('mouseup', function(){
        playOffToggling(p1, play1);
    })

    //play2

    // play2.addEventListener('touchstart', function(){
    //     playOnToggling(1, p2, play2);
    // })
    // play2.addEventListener('touchend', function(){
    //     playOffToggling(p2, play2);
    // })
    play2.addEventListener('mousedown', function(){
        playOnToggling(1, p2, play2);
    })
    play2.addEventListener('mouseup', function(){
        playOffToggling(p2, play2);
    })

    //play3

    // play3.addEventListener('touchstart', function(){
    //     playOnToggling(2, p3, play3);
    // })
    // play3.addEventListener('touchend', function(){
    //     playOffToggling(p3, play3);
    // })
    play3.addEventListener('mousedown', function(){
        playOnToggling(2, p3, play3);
    })
    play3.addEventListener('mouseup', function(){
        playOffToggling(p3, play3);
    })

    //play4

    // play4.addEventListener('touchstart', function(){
    //     playOnToggling(3, p4, play4);
    // })
    // play4.addEventListener('touchend', function(){
    //     playOffToggling(p4, play4);
    // })
    play4.addEventListener('mousedown', function(){
        playOnToggling(3, p4, play4);
    })
    play4.addEventListener('mouseup', function(){
        playOffToggling(p4, play4);
    })

    //play5

    // play5.addEventListener('touchstart', function(){
    //     playOnToggling(4, p5, play5);
    // })
    // play5.addEventListener('touchend', function(){
    //     playOffToggling(p5, play5);
    // })
    play5.addEventListener('mousedown', function(){
        playOnToggling(4, p5, play5);
    })
    play5.addEventListener('mouseup', function(){
        playOffToggling(p5, play5);
    })

    //play6

    // play6.addEventListener('touchstart', function(){
    //     playOnToggling(5, p6, play6);
    // })
    // play6.addEventListener('touchend', function(){
    //     playOffToggling(p6, play6);
    // })
    play6.addEventListener('mousedown', function(){
        playOnToggling(5, p6, play6);
    })
    play6.addEventListener('mouseup', function(){
        playOffToggling(p6, play6);
    })

    //play7

    // play7.addEventListener('touchstart', function(){
    //     playOnToggling(6, p7, play7);
    // })
    // play7.addEventListener('touchend', function(){
    //     playOffToggling(p7, play7);
    // })
    play7.addEventListener('mousedown', function(){
        playOnToggling(6, p7, play7);
    })
    play7.addEventListener('mouseup', function(){
        playOffToggling(p7, play7);
    })

    //play8

    // play8.addEventListener('touchstart', function(){
    //     playOnToggling(7, p8, play8);
    // })
    // play8.addEventListener('touchend', function(){
    //     playOffToggling(p8, play8);
    // })
    play8.addEventListener('mousedown', function(){
        playOnToggling(7, p8, play8);
    })
    play8.addEventListener('mouseup', function(){
        playOffToggling(p8, play8);
    })


    function playOnToggling(targetBool, targetValue, targetElement){
        if(toggleBool == true){
            playBools[targetBool] =! playBools[targetBool];
            console.log(playBools);
            if(playBools[targetBool] == true){
                targetElement.style.backgroundColor = playPressedColor;
                targetValue.value = 1;
            }
            else{
                targetElement.style.backgroundColor = "white";
                targetValue.value = 0;
            }
        }
        else if(toggleBool == false){
            targetValue.value = 1;
            targetElement.style.backgroundColor = playPressedColor;
        }
    }


    function playOffToggling(targetValue, targetElement){
        if(toggleBool == true){
            console.log("on");
        }
        else if(toggleBool == false){
            targetElement.style.backgroundColor = "white";
            targetValue.value = 0;
        }
    }


    //toggles

    // toggleButton.addEventListener('touchstart', function() {
    //     toggleBool = !toggleBool;
    //     if(toggleBool == true){
    //         toggleButton.style.backgroundColor = "gray";
    //         toggleButton.style.color = "white";
    //         toggleParam.value = 1;
    //     }
    //     else {
    //         toggleButton.style.backgroundColor = "white";
    //         toggleButton.style.color = "gray";
    //         toggleParam.value = 0;
    //     }
    // })

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
            playButtons.style.backgroundColor = "white";
        }
    })

    // pitchButton.addEventListener('touchstart', function() {
    //     pitchBool = !pitchBool;
    //     if(pitchBool == true){
    //         pitchButton.style.backgroundColor = "gray";
    //         pitchButton.style.color = "white";
    //         pitchParam.value = 1;
    //     }
    //     else {
    //         pitchButton.style.backgroundColor = "white";
    //         pitchButton.style.color = "gray";
    //         pitchParam.value = 0;
    //     }
    // })

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
            playButtons.style.backgroundColor = "white";
        }
    })

    // cropButton.addEventListener('touchstart', function() {
    //     cropBool = !cropBool;
    //     if(cropBool == true){
    //         cropButton.style.backgroundColor = "gray";
    //         cropButton.style.color = "white";
    //         cropParam.value = 1;
    //     }
    //     else {
    //         cropButton.style.backgroundColor = "white";
    //         cropButton.style.color = "gray";
    //         cropParam.value = 0;
    //     }
    // })

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
            playButtons.style.backgroundColor = "white";
        }
    })

    // feedbackButton.addEventListener('touchstart', function() {
    //     feedbackBool = !feedbackBool;
    //     if(feedbackBool == true){
    //         feedbackButton.style.backgroundColor = "gray";
    //         feedbackButton.style.color = "white";
    //         feedbackParam.value = 1;
    //     }
    //     else {
    //         feedbackButton.style.backgroundColor = "white";
    //         feedbackButton.style.color = "gray";
    //         feedbackParam.value = 0;
    //     }
    // })

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
            playButtons.style.backgroundColor = "white";
        }
    })

    context.resume();
};

setup();

function startAudio() {
  context.resume();
}

startAudio();
