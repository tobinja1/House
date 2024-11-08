// Get createDevice from the rnbo.js library
const { createDevice } = RNBO;

// Create AudioContext
var WAContext = window.AudioContext || window.webkitAudioContext;
var context = new WAContext();

// var recordButton = document.getElementById("record-button");
// var playButton = document.getElementById("play-button");
// var loopCheckbox = document.getElementById("loop-checkbox");

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

    // // this one works for desktop
    // function dragging(e) {
    //     if(pressed == true && e.clientX >= dragContainerBoundingRect.left && e.clientX <= dragContainerBoundingRect.right - thumbWidth && e.clientY >= dragContainerBoundingRect.top + thumbWidth*0.75 && e.clientY <= dragContainerBoundingRect.bottom - thumbWidth*0.25){
    //         e.preventDefault();
    //         adjClientX = e.clientX/dragContainerBoundingRect.right;
    //         adjClientY = e.clientY/dragContainerBoundingRect.bottom;
    //         thumbDrag.style.left = `${e.clientX - thumbWidth*1.5}px`;
    //         thumbDrag.style.top = `${e.clientY - thumbWidth*1.5}px`;
    //         console.log(adjClientX);
    //         console.log(adjClientY);
    //     }
    // }


    function dragging(e) {
        e.preventDefault();
        if(pressed == true && e.pageX >= dragContainerBoundingRect.left && e.pageX <= dragContainerBoundingRect.right - thumbWidth && e.pageY >= dragContainerBoundingRect.top + thumbWidth*0.75 && e.pageY <= dragContainerBoundingRect.bottom - thumbWidth*0.25){
            adjClientX = e.pageX/dragContainerBoundingRect.right;
            adjClientY = e.pageY/dragContainerBoundingRect.bottom;
            thumbDrag.style.left = `${e.clientX - thumbWidth*1.5}px`;
            thumbDrag.style.top = `${e.clientY - thumbWidth*1.5}px`;
            console.log(adjClientY);
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
    record1.addEventListener('mousedown', function(){
        recordOnToggle(0, r1, record1);
    });
    record1.addEventListener('mouseup', function(){
        recordOffToggle(r1, record1);
    });

    //record2

    // record2.addEventListener('touchstart', function(){
    //     recordOnToggle(1, r2, record2);
    // });
    // record2.addEventListener('touchend', function(){
    //     recordOffToggle(r2, record2);
    // });
    record2.addEventListener('mousedown', function(){
        recordOnToggle(1, r2, record2);
    });
    record2.addEventListener('mouseup', function(){
        recordOffToggle(r2, record2);
    });

    //record3

    // record3.addEventListener('touchstart', function(){
    //     recordOnToggle(2, r3, record3);
    // });
    // record3.addEventListener('touchend', function(){
    //     recordOffToggle(r3, record3);
    // });
    record3.addEventListener('mousedown', function(){
        recordOnToggle(2, r3, record3);
    });
    record3.addEventListener('mouseup', function(){
        recordOffToggle(r3, record3);
    });

    //record4

    // record4.addEventListener('touchstart', function(){
    //     recordOnToggle(3, r4, record4);
    // });
    // record4.addEventListener('touchend', function(){
    //     recordOffToggle(r4, record4);
    // });
    record4.addEventListener('mousedown', function(){
        recordOnToggle(3, r4, record4);
    });
    record4.addEventListener('mouseup', function(){
        recordOffToggle(r4, record4);
    });

    //record5

    // record5.addEventListener('touchstart', function(){
    //     recordOnToggle(4, r5, record5);
    // });
    // record5.addEventListener('touchend', function(){
    //     recordOffToggle(r5, record5);
    // });
    record5.addEventListener('mousedown', function(){
        recordOnToggle(4, r5, record5);
    });
    record5.addEventListener('mouseup', function(){
        recordOffToggle(r5, record5);
    });

    //record6

    // record6.addEventListener('touchstart', function(){
    //     recordOnToggle(5, r6, record6);
    // });
    // record6.addEventListener('touchend', function(){
    //     recordOffToggle(r6, record6);
    // });
    record6.addEventListener('mousedown', function(){
        recordOnToggle(5, r6, record5);
    });
    record6.addEventListener('mouseup', function(){
        recordOffToggle(r6, record6);
    });

    //record7

    // record7.addEventListener('touchstart', function(){
    //     recordOnToggle(6, r7, record7);
    // });
    // record7.addEventListener('touchend', function(){
    //     recordOffToggle(r7, record7);
    // });
    record7.addEventListener('mousedown', function(){
        recordOnToggle(6, r7, record7);
    });
    record7.addEventListener('mouseup', function(){
        recordOffToggle(r7, record7);
    });

    //record8

    // record8.addEventListener('touchstart', function(){
    //     recordOnToggle(7, r8, record8);
    // });
    // record8.addEventListener('touchend', function(){
    //     recordOffToggle(r8, record8);
    // });
    record8.addEventListener('mousedown', function(){
        recordOnToggle(7, r8, record8);
    });
    record8.addEventListener('mouseup', function(){
        recordOffToggle(r8, record8);
    });

    // for(let i = 0; i <= 8; i++){
    //     recordButtons[i].addEventListener('mousedown', function(){
    //         recordOnToggle(i, recordButtons[i], recordBools[i]);
    //     })
    //     recordButtons[i].addEventListener('mouseup', function(){
    //         recordOffToggle(i, recordButtons[i]);
    //     })
    // }

    

    function recordOnToggle(targetBool, targetValue, targetElement){
        if(toggleBool == true){
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
