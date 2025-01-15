// Get createDevice from the rnbo.js library
const { createDevice } = RNBO;

// Create AudioContext
var WAContext = window.AudioContext || window.webkitAudioContext;
var context = new WAContext();

startButton = document.getElementById("start-button");

var burgerMenuOpen = document.getElementById("burger-menu-open");
var burgerMenuClose = document.getElementById("burger-menu-close");
var popout = document.getElementById("popout");
var volSlider = document.getElementById("vol-slider");

var recsButton = document.getElementById("recs-button");
var samplesButton = document.getElementById("samples-button");
var isRecsBool = true;

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

var dudRecordBool = false;

var recordBools = [false, false, false, false, false, false, false, false];
var playBools = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false];
var sampleBank = [
    "assets/audio/samp1.wav",
    "assets/audio/samp2.wav",
    "assets/audio/samp3.wav",
    "assets/audio/samp4.wav",
    "assets/audio/samp5.wav",
    "assets/audio/samp6.wav",
    "assets/audio/samp7.wav",
    "assets/audio/samp8.wav",
    "assets/audio/samp9.wav",
    "assets/audio/samp10.wav",
    "assets/audio/samp11.wav",
    "assets/audio/samp12.wav",
    "assets/audio/samp13.wav",
    "assets/audio/samp14.wav",
    "assets/audio/samp15.wav",
    "assets/audio/samp16.wav"
];

var playDudBool = false;

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

var toggleDudBool = false;
var pitchDudBool = false;
var cropDudBool = false;
var feedbackDudBool = false;

var pressed = 0;

var record1 = document.getElementById("record1");
var record2 = document.getElementById("record2");
var record3 = document.getElementById("record3");
var record4 = document.getElementById("record4");
var record5 = document.getElementById("record5");
var record6 = document.getElementById("record6");
var record7 = document.getElementById("record7");
var record8 = document.getElementById("record8");

var recordDud = document.getElementById("recordnull");

var play1 = document.getElementById("play1");
var play2 = document.getElementById("play2");
var play3 = document.getElementById("play3");
var play4 = document.getElementById("play4");
var play5 = document.getElementById("play5");
var play6 = document.getElementById("play6");
var play7 = document.getElementById("play7");
var play8 = document.getElementById("play8");

var sample1 = document.getElementById("sample1");
var sample2 = document.getElementById("sample2");
var sample3 = document.getElementById("sample3");
var sample4 = document.getElementById("sample4");
var sample5 = document.getElementById("sample5");
var sample6 = document.getElementById("sample6");
var sample7 = document.getElementById("sample7");
var sample8 = document.getElementById("sample8");

var playButtons = document.querySelectorAll(".play-button");

var playDud = document.getElementById("playnull")

var toggleButton = document.getElementById("toggle");
var pitchButton = document.getElementById("pitch");
var cropButton = document.getElementById("crop");
var feedbackButton = document.getElementById("feedback");

var toggleDud = document.getElementById("togglenull");
var pitchDud = document.getElementById("pitchnull");
var cropDud = document.getElementById("cropnull");
var feedbackDud = document.getElementById("feedbacknull");

var recordToggle;
var loopToggle;
var playToggle;
var device;

//effects logic

var adjClientX = 0;
var adjClientY = 0;
var scaledX = 0;
var scaledY = 0;

var coord1 = [1,1];
var coord2 = [1,0];
var coord3 = [0,1];
var coord4 = [0,0];

var coordArray = [coord1, coord2, coord3, coord4];
var numbers = ["0","1","2","3"];

function shuffle(array) {
    let currentIndex = array.length;
  
    // While there remain elements to shuffle...
    while (currentIndex != 0) {
  
      // Pick a remaining element...
      let randomIndex = Math.floor(Math.random() * currentIndex);
      currentIndex--;
  
      // And swap it with the current element.
      [array[currentIndex], array[randomIndex]] = [
        array[randomIndex], array[currentIndex]];
    }
  }

shuffle(numbers);
shuffle(sampleBank);

var effect1circlePos = coordArray[numbers[0]];
var effect2circlePos = coordArray[numbers[1]];
var effect3circlePos = coordArray[numbers[2]];
var effect4circlePos = coordArray[numbers[3]];
var deadZoneCirclePos = [0.5, 0.5];

var noiseGradients = [
    "url('assets/imgs/noise/noise1.png')",
    "url('assets/imgs/noise/noise2.png')",
    "url('assets/imgs/noise/noise3.png')",
    "url('assets/imgs/noise/noise4.png')",
    "url('assets/imgs/noise/noise5.png')",
    "url('assets/imgs/noise/noise6.png')",
    "url('assets/imgs/noise/noise7.png')",
    "url('assets/imgs/noise/noise8.png')",
    "url('assets/imgs/noise/noise9.png')",
    "url('assets/imgs/noise/noise10.png')",
    "url('assets/imgs/noise/noise11.png')",
    "url('assets/imgs/noise/noise12.png')",
]

var gradientRandom = Math.ceil(Math.random() * noiseGradients.length);
var gradientBackground = document.querySelector(".thumb-toggle-container");
gradientBackground.style.backgroundImage = noiseGradients[gradientRandom];

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

document.querySelector(".start-cover-inner").style.opacity = "1";
document.querySelector(".start-cover-inner").style.transform = "scale(1)";

//additional samples display logic

function displayControl(className, value) {
    var elems = document.querySelectorAll(className);
    var index = 0, length = elems.length;
    for ( ; index < length; index++) {
        elems[index].style.display = value;
    }
}

displayControl(".secondary-samples-row", "none");
displayControl(".dead", "none");

samplesButton.addEventListener('click', function(){
    recsSampsToggle();
})

recsButton.addEventListener('click', function(){
    recsSampsToggle();
})

function recsSampsToggle(){
    isRecsBool = !isRecsBool;
    if(isRecsBool == true){
        recsButton.style.backgroundColor = "gray";
        recsButton.style.color = "white";
        samplesButton.style.backgroundColor = "white";
        samplesButton.style.color = "gray";
        displayControl(".secondary-samples-row", "none");
        displayControl(".play-button-row", "flex");

        displayControl(".dead", "none");
        displayControl(".record-button-row", "flex");
    }
    else {
        samplesButton.style.backgroundColor = "gray";
        samplesButton.style.color = "white";
        recsButton.style.backgroundColor = "white";
        recsButton.style.color = "gray";
        displayControl(".secondary-samples-row", "flex");
        displayControl(".play-button-row", "none");

        displayControl(".dead", "flex");
        displayControl(".record-button-row", "none");
    }
}

var dudRecs = document.getElementById("recs-button-dud");
var dudSamples = document.getElementById("samples-button-dud");
var dudBool = true;

function recSampsDud() {
    dudBool = !dudBool;
    if(dudBool == true){
        dudRecs.style.backgroundColor = "gray";
        dudRecs.style.color = "white";
        dudSamples.style.backgroundColor = "white";
        dudSamples.style.color = "gray";
    }
    else {
        dudSamples.style.backgroundColor = "gray";
        dudSamples.style.color = "white";
        dudRecs.style.backgroundColor = "white";
        dudRecs.style.color = "gray";
    }
}

dudRecs.addEventListener('click', recSampsDud);
dudSamples. addEventListener('click', recSampsDud);

const setup = async () => {

    var dragContainer = document.getElementById("drag-container");
    var dragContainerBoundingRect = dragContainer.getBoundingClientRect();
    var thumbDrag = document.getElementById("thumb-drag");
    var thumbWidth = 50;

    //loading devices

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
    response = await fetch("assets/rnbo/houseSecondarySamples.json");
    const samplesPatch = await response.json();

    device = await createDevice({ context, patcher : devicePatch });
    samplesPlayer = await createDevice({ context, patcher : samplesPatch });

    //loading audio files for the sample player

    response = await fetch(sampleBank[0]);
	const arrayBuf1 = await response.arrayBuffer();
	const audioBuf1 = await context.decodeAudioData(arrayBuf1);
	await samplesPlayer.setDataBuffer("theBuff1", audioBuf1);

    response = await fetch(sampleBank[1]);
	const arrayBuf2 = await response.arrayBuffer();
	const audioBuf2 = await context.decodeAudioData(arrayBuf2);
	await samplesPlayer.setDataBuffer("theBuff2", audioBuf2);

    response = await fetch(sampleBank[2]);
	const arrayBuf3 = await response.arrayBuffer();
	const audioBuf3 = await context.decodeAudioData(arrayBuf3);
	await samplesPlayer.setDataBuffer("theBuff3", audioBuf3);

    response = await fetch(sampleBank[3]);
	const arrayBuf4 = await response.arrayBuffer();
	const audioBuf4 = await context.decodeAudioData(arrayBuf4);
	await samplesPlayer.setDataBuffer("theBuff4", audioBuf4);

    response = await fetch(sampleBank[4]);
	const arrayBuf5 = await response.arrayBuffer();
	const audioBuf5 = await context.decodeAudioData(arrayBuf5);
	await samplesPlayer.setDataBuffer("theBuff5", audioBuf5);

    response = await fetch(sampleBank[5]);
	const arrayBuf6 = await response.arrayBuffer();
	const audioBuf6 = await context.decodeAudioData(arrayBuf6);
	await samplesPlayer.setDataBuffer("theBuff6", audioBuf6);

    response = await fetch(sampleBank[6]);
	const arrayBuf7 = await response.arrayBuffer();
	const audioBuf7 = await context.decodeAudioData(arrayBuf7);
	await samplesPlayer.setDataBuffer("theBuff7", audioBuf7);

    response = await fetch(sampleBank[7]);
	const arrayBuf8 = await response.arrayBuffer();
	const audioBuf8 = await context.decodeAudioData(arrayBuf8);
	await samplesPlayer.setDataBuffer("theBuff8", audioBuf8);

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

    ps1 = samplesPlayer.parametersById.get("p1");
    ps2 = samplesPlayer.parametersById.get("p2");
    ps3 = samplesPlayer.parametersById.get("p3");
    ps4 = samplesPlayer.parametersById.get("p4");
    ps5 = samplesPlayer.parametersById.get("p5");
    ps6 = samplesPlayer.parametersById.get("p6");
    ps7 = samplesPlayer.parametersById.get("p7");
    ps8 = samplesPlayer.parametersById.get("p8");

    vol = samplesPlayer.parametersById.get("volume");

    toggleParam = device.parametersById.get("toggleParam");
    pitchParam = device.parametersById.get("pitchParam");
    cropParam = device.parametersById.get("cropParam");
    feedbackParam = device.parametersById.get("feedbackParam");

    toggleSampleParam = samplesPlayer.parametersById.get("toggleParam");
    pitchSampleParam = samplesPlayer.parametersById.get("pitchParam");
    cropSampleParam = samplesPlayer.parametersById.get("cropParam");
    feedbackSampleParam = samplesPlayer.parametersById.get("feedbackParam");

    //getting effects params
    effect1dry = effect1.parametersById.get("dryWet");
    effect2dry = effect2.parametersById.get("dryWet");
    effect3dry = effect3.parametersById.get("dryWet");
    effect4dry = effect4.parametersById.get("dryWet");

    source.connect(device.node);
    source.connect(samplesPlayer.node);

    device.node.connect(effect1.node);
    samplesPlayer.node.connect(effect1.node);


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
        if(e.changedTouches[0].pageX >= dragContainerBoundingRect.left && e.changedTouches[0].pageX <= dragContainerBoundingRect.right && e.changedTouches[0].pageY >= dragContainerBoundingRect.top && e.changedTouches[0].pageY<= dragContainerBoundingRect.bottom){
            adjClientX = e.changedTouches[0].pageX/dragContainerBoundingRect.right;
            adjClientY = e.changedTouches[0].pageY/dragContainerBoundingRect.bottom;
            thumbDrag.style.left = `${e.changedTouches[0].pageX - thumbWidth}px`;
            thumbDrag.style.top = `${e.changedTouches[0].pageY - thumbWidth}px`;

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

    dragContainer.addEventListener('touchstart', function(){
        pressed = true;
    });

    dragContainer.addEventListener('touchstart', draggingMobile);

    dragContainer.addEventListener('touchmove', draggingMobile);

    dragContainer.addEventListener('touchend', function(){
        pressed = false;
    });

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

    record7.addEventListener('click', function(){
        recordingToggle(6, r7, record7);
    });

    record8.addEventListener('click', function(){
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

    recordDud.addEventListener('click', function(){
        dudRecordingToggle(recordDud);
    })

    function dudRecordingToggle(targetElement) {
        dudRecordBool = !dudRecordBool;
        if(dudRecordBool == true){
            targetElement.style.backgroundColor = "red";
            targetElement.style.color = "white";
        }
        else {
            targetElement.style.backgroundColor = "white";
            targetElement.style.color = "black";
        }
    }

    //play buttons

    play1.addEventListener('mousedown', function(){
        playOnToggling(0, p1, play1);
    })
    play1.addEventListener('mouseup', function(){
        playOffToggling(p1, play1);
    })


    play2.addEventListener('mousedown', function(){
        playOnToggling(1, p2, play2);
    })
    play2.addEventListener('mouseup', function(){
        playOffToggling(p2, play2);
    })


    play3.addEventListener('mousedown', function(){
        playOnToggling(2, p3, play3);
    })
    play3.addEventListener('mouseup', function(){
        playOffToggling(p3, play3);
    })


    play4.addEventListener('mousedown', function(){
        playOnToggling(3, p4, play4);
    })
    play4.addEventListener('mouseup', function(){
        playOffToggling(p4, play4);
    })


    play5.addEventListener('mousedown', function(){
        playOnToggling(4, p5, play5);
    })
    play5.addEventListener('mouseup', function(){
        playOffToggling(p5, play5);
    })

 
    play6.addEventListener('mousedown', function(){
        playOnToggling(5, p6, play6);
    })
    play6.addEventListener('mouseup', function(){
        playOffToggling(p6, play6);
    })


    play7.addEventListener('mousedown', function(){
        playOnToggling(6, p7, play7);
    })
    play7.addEventListener('mouseup', function(){
        playOffToggling(p7, play7);
    })


    play8.addEventListener('mousedown', function(){
        playOnToggling(7, p8, play8);
    })
    play8.addEventListener('mouseup', function(){
        playOffToggling(p8, play8);
    })


    sample1.addEventListener('mousedown', function(){
        playOnToggling(8, ps1, sample1);
    })
    sample1.addEventListener('mouseup', function(){
        playOffToggling(ps1, sample1);
    })


    sample2.addEventListener('mousedown', function(){
        playOnToggling(9, ps2, sample2);
    })
    sample2.addEventListener('mouseup', function(){
        playOffToggling(ps2, sample2);
    })


    sample3.addEventListener('mousedown', function(){
        playOnToggling(10, ps3, sample3);
    })
    sample3.addEventListener('mouseup', function(){
        playOffToggling(ps3, sample3);
    })


    sample4.addEventListener('mousedown', function(){
        playOnToggling(11, ps4, sample4);
    })
    sample4.addEventListener('mouseup', function(){
        playOffToggling(ps4, sample4);
    })


    sample5.addEventListener('mousedown', function(){
        playOnToggling(12, ps5, sample5);
    })
    sample5.addEventListener('mouseup', function(){
        playOffToggling(ps5, sample5);
    })


    sample6.addEventListener('mousedown', function(){
        playOnToggling(13, ps6, sample6);
    })
    sample6.addEventListener('mouseup', function(){
        playOffToggling(ps6, sample6);
    })

    sample7.addEventListener('mousedown', function(){
        playOnToggling(14, ps7, sample7);
    })
    sample7.addEventListener('mouseup', function(){
        playOffToggling(ps7, sample7);
    })

    sample8.addEventListener('mousedown', function(){
        playOnToggling(15, ps8, sample8);
    })
    sample8.addEventListener('mouseup', function(){
        playOffToggling(ps8, sample8);
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

    playDud.addEventListener('click', function(){
        playDudToggling(playDud);
    });

    function playDudToggling(targetElement) {
        if(toggleDudBool == true){
            playDudBool =! playDudBool;
            if(playDudBool == true){
                targetElement.style.backgroundColor = playPressedColor;
            }
            else{
                targetElement.style.backgroundColor = "white";
            }
        }
    }

    toggleButton.addEventListener('click', function() {
        toggleBool = !toggleBool;
        if(toggleBool == true){
            toggleButton.style.backgroundColor = "gray";
            toggleButton.style.color = "white";
            toggleParam.value = 1;
            toggleSampleParam.value = 1;
        }
        else {
            toggleButton.style.backgroundColor = "white";
            toggleButton.style.color = "gray";
            toggleParam.value = 0;
            toggleSampleParam.value = 0;

            play1.style.backgroundColor = "white";
            play2.style.backgroundColor = "white";
            play3.style.backgroundColor = "white";
            play4.style.backgroundColor = "white";
            play5.style.backgroundColor = "white";
            play6.style.backgroundColor = "white";
            play7.style.backgroundColor = "white";
            play8.style.backgroundColor = "white";

            sample1.style.backgroundColor = "white";
            sample2.style.backgroundColor = "white";
            sample3.style.backgroundColor = "white";
            sample4.style.backgroundColor = "white";
            sample5.style.backgroundColor = "white";
            sample6.style.backgroundColor = "white";
            sample7.style.backgroundColor = "white";
            sample8.style.backgroundColor = "white";
            
            p1.value = 0;
            p2.value = 0;
            p3.value = 0;
            p4.value = 0;
            p5.value = 0;
            p6.value = 0;
            p7.value = 0;
            p8.value = 0;

            ps1.value = 0;
            ps2.value = 0;
            ps3.value = 0;
            ps4.value = 0;
            ps5.value = 0;
            ps6.value = 0;
            ps7.value = 0;
            ps8.value = 0;
        }
    })

    pitchButton.addEventListener('click', function() {
        pitchBool = !pitchBool;
        if(pitchBool == true){
            pitchButton.style.backgroundColor = "gray";
            pitchButton.style.color = "white";
            pitchParam.value = 1;
            pitchSampleParam.value = 1;
        }
        else {
            pitchButton.style.backgroundColor = "white";
            pitchButton.style.color = "gray";
            pitchParam.value = 0;
            pitchSampleParam.value = 0;
            playButtons.style.backgroundColor = "white";
        }
    })

    cropButton.addEventListener('click', function() {
        cropBool = !cropBool;
        if(cropBool == true){
            cropButton.style.backgroundColor = "gray";
            cropButton.style.color = "white";
            cropParam.value = 1;
            cropSampleParam.value = 1;
        }
        else {
            cropButton.style.backgroundColor = "white";
            cropButton.style.color = "gray";
            cropParam.value = 0;
            cropSampleParam.value = 0;
            playButtons.style.backgroundColor = "white";
        }
    })

    feedbackButton.addEventListener('click', function() {
        feedbackBool = !feedbackBool;
        if(feedbackBool == true){
            feedbackButton.style.backgroundColor = "gray";
            feedbackButton.style.color = "white";
            feedbackParam.value = 1;
            feedbackSampleParam.value = 1;
        }
        else {
            feedbackButton.style.backgroundColor = "white";
            feedbackButton.style.color = "gray";
            feedbackParam.value = 0;
            feedbackSampleParam.value = 0;
            playButtons.style.backgroundColor = "white";
        }
    })

    //dud params

    toggleDud.addEventListener('click', function() {
        toggleDudBool = !toggleDudBool;
        if(toggleDudBool == true){
            toggleDud.style.backgroundColor = "gray";
            toggleDud.style.color = "white";
        }
        else {
            toggleDud.style.backgroundColor = "white";
            toggleDud.style.color = "gray";
        }
    })

    pitchDud.addEventListener('click', function() {
        pitchDudBool = !pitchDudBool;
        if(pitchDudBool == true){
            pitchDud.style.backgroundColor = "gray";
            pitchDud.style.color = "white";
        }
        else {
            pitchDud.style.backgroundColor = "white";
            pitchDud.style.color = "gray";
        }
    })

    cropDud.addEventListener('click', function() {
        cropDudBool = !cropDudBool;
        if(cropDudBool == true){
            cropDud.style.backgroundColor = "gray";
            cropDud.style.color = "white";
        }
        else {
            cropDud.style.backgroundColor = "white";
            cropDud.style.color = "gray";
        }
    })

    feedbackDud.addEventListener('click', function() {
        feedbackDudBool = !feedbackDudBool;
        if(feedbackDudBool == true){
            feedbackDud.style.backgroundColor = "gray";
            feedbackDud.style.color = "white";
        }
        else {
            feedbackDud.style.backgroundColor = "white";
            feedbackDud.style.color = "gray";
        }
    })

    volSlider.oninput = function() {
        vol.value = this.value/100;
      } 
    

    context.resume();
};

function startAudio() {
    context.resume();
  }
  

startButton.addEventListener('click', function(){
    document.querySelector(".start-cover").style.opacity = "0";
    setup();
    startAudio();
    setTimeout(() => {
        document.querySelector(".start-cover").style.display = "none";
      }, "200");
      
})

function popoutOpen(){
        popout.style.display = "block"
        setTimeout(() => {
        popout.style.left = "0px";
        document.body.style.overflowY = "visible";;
          }, "1");
          
    }

function popoutClose(){

        popout.style.left = "140vw";
        document.body.style.overflowY = "hidden";
        setTimeout(() => {
            popout.style.display = "none";
              }, "500");
    }

burgerMenuOpen.addEventListener('click', popoutOpen);
burgerMenuClose.addEventListener('click', popoutClose);

popoutClose;