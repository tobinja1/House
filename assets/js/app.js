const { createApp, reactive, ref, computed, onMounted } = Vue;
const { createDevice } = RNBO;

// Create Vue app
const app = createApp({
  setup() {
    // Audio context setup
    let context;
    let device;
    let samplesPlayer;
    let effect1, effect2, effect3, effect4;

    // Audio parameters
    let r1, r2, r3, r4, r5, r6, r7, r8;
    let p1, p2, p3, p4, p5, p6, p7, p8;
    let ps1, ps2, ps3, ps4, ps5, ps6, ps7, ps8;
    let vol;
    let toggleParam, pitchParam, cropParam, feedbackParam;
    let toggleSampleParam, pitchSampleParam, cropSampleParam, feedbackSampleParam;
    let effect1dry, effect2dry, effect3dry, effect4dry;

    // Drag state
    let pressed = false;
    let dragContainer, dragContainerBoundingRect, thumbDrag;
    const thumbWidth = 50;

    // Effects positions
    const coord1 = [1,1];
    const coord2 = [1,0];
    const coord3 = [0,1];
    const coord4 = [0,0];
    const coordArray = [coord1, coord2, coord3, coord4];
    const numbers = ["0","1","2","3"];
    let effect1circlePos, effect2circlePos, effect3circlePos, effect4circlePos;
    const deadZoneCirclePos = [0.5, 0.5];
    const effectCircleRadius = 0.75;
    const deadZoneCircleRadius = 0.125;

    const sampleBank = [
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

    const noiseGradients = [
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
    ];

    // Utility functions
    function shuffle(array) {
      let currentIndex = array.length;
      while (currentIndex != 0) {
        let randomIndex = Math.floor(Math.random() * currentIndex);
        currentIndex--;
        [array[currentIndex], array[randomIndex]] = [array[randomIndex], array[currentIndex]];
      }
    }

    function distance(x1, y1, x2, y2) {
      const dx = x2 - x1;
      const dy = y2 - y1;
      return Math.sqrt(dx * dx + dy * dy);
    }

    shuffle(numbers);
    shuffle(sampleBank);

    // App state
    const appState = reactive({
      showStart: true,
      popoutOpen: false,
      isRecsBool: true,
      dudBool: true,
      toggleBool: false,
      pitchBool: false,
      cropBool: false,
      feedbackBool: false,
      dudToggleBool: false,
      dudPitchBool: false,
      dudCropBool: false,
      dudFeedbackBool: false,
      recordBools: [false, false, false, false],
      playBools: new Array(16).fill(false),
      playButtonColors: new Array(16).fill('white'),
      volumeSlider: 50,
      thumbX: 0,
      thumbY: 0,
      backgroundGradient: '',
      playPressedColor: "rgba(0,103,238,0.2)"
    });

    const startApp = async () => {
      appState.showStart = false;
      document.body.style.overflowY = 'visible';
      await setup();
    };

    const openPopout = () => {
      appState.popoutOpen = true;
      document.body.style.overflowY = 'hidden';
    };

    const closePopout = () => {
      appState.popoutOpen = false;
      document.body.style.overflowY = 'visible';
    };

    const updateVolume = (e) => {
      appState.volumeSlider = e.target.value;
      if (vol) {
        vol.value = e.target.value / 100;
      }
    };

    const toggleRecord = (index) => {
      appState.recordBools[index] = !appState.recordBools[index];
      const targetValue = [r1, r2, r3, r4][index];
      if (targetValue) {
        targetValue.value = appState.recordBools[index] ? 1 : 0;
      }
    };

    const toggleRecordDud = () => {
      // Placeholder for dud record button
    };

    const toggleLoop = () => {
      appState.toggleBool = !appState.toggleBool;
      if (toggleParam && toggleSampleParam) {
        toggleParam.value = appState.toggleBool ? 1 : 0;
        toggleSampleParam.value = appState.toggleBool ? 1 : 0;
      }
      if (!appState.toggleBool) {
        appState.playBools.fill(false);
        appState.playButtonColors.fill('white');
        for (let i = 0; i < 8; i++) {
          const p = [p1, p2, p3, p4, p5, p6, p7, p8][i];
          if (p) p.value = 0;
          const ps = [ps1, ps2, ps3, ps4, ps5, ps6, ps7, ps8][i];
          if (ps) ps.value = 0;
        }
      }
    };

    const togglePitch = () => {
      appState.pitchBool = !appState.pitchBool;
      if (pitchParam && pitchSampleParam) {
        pitchParam.value = appState.pitchBool ? 1 : 0;
        pitchSampleParam.value = appState.pitchBool ? 1 : 0;
      }
    };

    const toggleCrop = () => {
      appState.cropBool = !appState.cropBool;
      if (cropParam && cropSampleParam) {
        cropParam.value = appState.cropBool ? 1 : 0;
        cropSampleParam.value = appState.cropBool ? 1 : 0;
      }
    };

    const toggleFeedback = () => {
      appState.feedbackBool = !appState.feedbackBool;
      if (feedbackParam && feedbackSampleParam) {
        feedbackParam.value = appState.feedbackBool ? 1 : 0;
        feedbackSampleParam.value = appState.feedbackBool ? 1 : 0;
      }
    };

    const toggleDudToggle = () => {
      appState.dudToggleBool = !appState.dudToggleBool;
    };

    const toggleDudPitch = () => {
      appState.dudPitchBool = !appState.dudPitchBool;
    };

    const toggleDudCrop = () => {
      appState.dudCropBool = !appState.dudCropBool;
    };

    const toggleDudFeedback = () => {
      appState.dudFeedbackBool = !appState.dudFeedbackBool;
    };

    const toggleDudRecsSamps = () => {
      appState.dudBool = !appState.dudBool;
    };

    const playOnToggling = (targetIndex) => {
      if (appState.toggleBool) {
        appState.playBools[targetIndex] = !appState.playBools[targetIndex];
        appState.playButtonColors[targetIndex] = appState.playBools[targetIndex] ? appState.playPressedColor : 'white';
        const pParams = [p1, p2, p3, p4, p5, p6, p7, p8, ps1, ps2, ps3, ps4, ps5, ps6, ps7, ps8];
        if (pParams[targetIndex]) {
          pParams[targetIndex].value = appState.playBools[targetIndex] ? 1 : 0;
        }
      } else {
        appState.playButtonColors[targetIndex] = appState.playPressedColor;
        const pParams = [p1, p2, p3, p4, p5, p6, p7, p8, ps1, ps2, ps3, ps4, ps5, ps6, ps7, ps8];
        if (pParams[targetIndex]) {
          pParams[targetIndex].value = 1;
        }
      }
    };

    const playOffToggling = (targetIndex) => {
      if (!appState.toggleBool) {
        appState.playButtonColors[targetIndex] = 'white';
        const pParams = [p1, p2, p3, p4, p5, p6, p7, p8, ps1, ps2, ps3, ps4, ps5, ps6, ps7, ps8];
        if (pParams[targetIndex]) {
          pParams[targetIndex].value = 0;
        }
      }
    };

    const startDrag = () => {
      pressed = true;
    };

    const endDrag = () => {
      pressed = false;
    };

    const dragging = (e) => {
      if (pressed && e.pageX >= dragContainerBoundingRect.left && e.pageX <= dragContainerBoundingRect.right - thumbWidth && 
          e.pageY >= dragContainerBoundingRect.top + thumbWidth*0.75 && e.pageY <= dragContainerBoundingRect.bottom - thumbWidth*0.25) {
        updateEffects(e.pageX, e.pageY);
      }
    };

    const draggingMobile = (e) => {
      if (e.changedTouches && e.changedTouches.length > 0) {
        const touchX = e.changedTouches[0].pageX;
        const touchY = e.changedTouches[0].pageY;
        if (touchX >= dragContainerBoundingRect.left && touchX <= dragContainerBoundingRect.right && 
            touchY >= dragContainerBoundingRect.top && touchY <= dragContainerBoundingRect.bottom) {
          updateEffects(touchX, touchY);
        }
      }
    };

    const updateEffects = (pageX, pageY) => {
      const adjClientX = pageX / dragContainerBoundingRect.right;
      const adjClientY = pageY / dragContainerBoundingRect.bottom;
      
      appState.thumbX = pageX - thumbWidth*1.5;
      appState.thumbY = pageY - thumbWidth*1.5;

      const effect1Dist = distance(adjClientX, adjClientY, effect1circlePos[0], effect1circlePos[1]);
      const effect2Dist = distance(adjClientX, adjClientY, effect2circlePos[0], effect2circlePos[1]);
      const effect3Dist = distance(adjClientX, adjClientY, effect3circlePos[0], effect3circlePos[1]);
      const effect4Dist = distance(adjClientX, adjClientY, effect4circlePos[0], effect4circlePos[1]);
      const deadZoneDist = distance(adjClientX, adjClientY, deadZoneCirclePos[0], deadZoneCirclePos[1]);

      if (effect1Dist <= effectCircleRadius) {
        effect1dry.value = 1 - (effect1Dist / effectCircleRadius);
      } else {
        effect1dry.value = 0;
      }

      if (effect2Dist <= effectCircleRadius) {
        effect2dry.value = 1 - (effect2Dist / effectCircleRadius);
      } else {
        effect2dry.value = 0;
      }

      if (effect3Dist <= effectCircleRadius) {
        effect3dry.value = 1 - (effect3Dist / effectCircleRadius);
      } else {
        effect3dry.value = 0;
      }

      if (effect4Dist <= effectCircleRadius) {
        effect4dry.value = 1 - (effect4Dist / effectCircleRadius);
      } else {
        effect4dry.value = 0;
      }

      if (deadZoneDist <= deadZoneCircleRadius) {
        effect1dry.value = 0;
        effect2dry.value = 0;
        effect3dry.value = 0;
        effect4dry.value = 0;
      }
    };

    const setup = async () => {
      // Audio context
      const WAContext = window.AudioContext || window.webkitAudioContext;
      context = new WAContext();

      dragContainer = document.getElementById("drag-container");
      dragContainerBoundingRect = dragContainer.getBoundingClientRect();
      thumbDrag = document.getElementById("thumb-drag");

      // Load devices
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

      device = await createDevice({ context, patcher: devicePatch });
      samplesPlayer = await createDevice({ context, patcher: samplesPatch });

      // Load audio files
      for (let i = 0; i < 8; i++) {
        response = await fetch(sampleBank[i]);
        const arrayBuf = await response.arrayBuffer();
        const audioBuf = await context.decodeAudioData(arrayBuf);
        await samplesPlayer.setDataBuffer(`theBuff${i + 1}`, audioBuf);
      }

      effect1 = await createDevice({ context, patcher: effect1Patch });
      effect2 = await createDevice({ context, patcher: effect2Patch });
      effect3 = await createDevice({ context, patcher: effect3Patch });
      effect4 = await createDevice({ context, patcher: effect4Patch });

      const stream = await navigator.mediaDevices.getUserMedia({ audio: true });
      const source = context.createMediaStreamSource(stream);

      // Get parameters
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

      effect1dry = effect1.parametersById.get("dryWet");
      effect2dry = effect2.parametersById.get("dryWet");
      effect3dry = effect3.parametersById.get("dryWet");
      effect4dry = effect4.parametersById.get("dryWet");

      // Set effect positions
      effect1circlePos = [parseFloat(numbers[0])/3, parseFloat(numbers[0])/3];
      effect2circlePos = [1, (parseFloat(numbers[1])/3)];
      effect3circlePos = [(parseFloat(numbers[2])/3), 1];
      effect4circlePos = [0, (parseFloat(numbers[3])/3)];

      // Connect audio graph
      source.connect(device.node);
      source.connect(samplesPlayer.node);

      device.node.connect(effect1.node);
      samplesPlayer.node.connect(effect1.node);

      effect1.node.connect(effect2.node);
      effect2.node.connect(effect3.node);
      effect3.node.connect(effect4.node);
      effect4.node.connect(context.destination);

      // Set background gradient
      const gradientRandom = Math.ceil(Math.random() * noiseGradients.length);
      appState.backgroundGradient = noiseGradients[gradientRandom - 1];

      context.resume();
    };

    onMounted(() => {
      // Initial setup
    });

    return {
      appState,
      startApp,
      openPopout,
      closePopout,
      updateVolume,
      toggleRecord,
      toggleRecordDud,
      toggleLoop,
      togglePitch,
      toggleCrop,
      toggleFeedback,
      toggleDudToggle,
      toggleDudPitch,
      toggleDudCrop,
      toggleDudFeedback,
      toggleDudRecsSamps,
      playOnToggling,
      playOffToggling,
      startDrag,
      endDrag,
      dragging,
      draggingMobile,
      setup
    };
  },
  template: `
    <div style="width: 100%; height: 100%;">
    <!-- Start Cover -->
    <div class="start-cover" :style="{ opacity: appState.showStart ? '1' : '0', display: appState.showStart ? 'flex' : 'none' }">
      <div class="start-cover-inner">
        <img class="logo-big" src="/assets/imgs/the magic house - logo (square).png" alt="Logo for The Magic House">
        <button @click="startApp" style="margin-top: 2rem;">enter The Magic House</button>
      </div>
    </div>

    <!-- Menu Popout -->
    <div id="popout" :style="{ display: appState.popoutOpen ? 'block' : 'none', left: appState.popoutOpen ? '0px' : '140vw' }">
      <div class="menu-and-icon-container">
        <div @click="closePopout">
          <div class="burgerline round-border" style="position: absolute; margin-top: 0.5em; width: 30px; transform: rotate(45deg);"></div>
          <div class="burgerline round-border" style="position: absolute; margin-top: 0.5rem; width: 30px; transform: rotate(-45deg);"></div>
        </div>
      </div>
      <div class="popout-content-container" style="padding-bottom: 1rem;">
        <div class="h1-container" style="display: flex; flex-direction: column; align-content: center; align-items: center;">
          <h1>The Magic House</h1>
          <p class="subtext" style="margin-left: 0.25rem;">ver. 2.1</p>
          <p class="subtext">by celia hill</p>
          <p class="subtext">built by <a href="https://dayflowerstudio.com/">dayflower studio</a></p>
        </div>
        <div class="house-popout-top">
          <img class="logo-big" src="/assets/imgs/the magic house - logo (square).png" alt="Logo for The Magic House">
          <a href="https://gumroad.com/discover?a=335080211&gad_source=1&gad_campaignid=21838325751&gclid=CjwKCAjwyMnNBhBNEiwA-Kcgu5zAnmnS5uPfabl3-RKQw836mveYRmd1-jCzfq05hIh3arEJX_doDhoC5JQQAvD_BwE" target="_blank" rel="noopener noreferrer">
            <h2 style="width: 100%; text-align: center; margin-bottom: 0px;">buy the cards here!</h2>
          </a>
          <p id="mobile-warning" style="width: 100%; text-align: center; font-weight: bold;">(NOTE: the magic house is made for mobile, so try it there instead!)</p>
        </div>
        <div class="vol-slider-container">
          <div class="slider-container" style="justify-content: center; align-items: center; display: flex; flex-direction: column;">
            <label for="vol-slider" style="font-weight: bold;">volume of <u>samples</u> section:</label>
            <input type="range" min="1" max="100" :value="appState.volumeSlider" @input="updateVolume" class="slider" id="vol-slider" style="width: 80%;">
          </div>
        </div>
        <div class="house-popout-main">
          <div>
            <h2 class="popout-section-hed">how to play:</h2>
            <p class="popout-body">this is a <u>record</u> button. press it to record audio.</p>
            <button class="record-button round-border button-width disable-dbl-tap-zoom centered" @click="toggleRecordDud">rec 1</button>
            <p class="popout-body">press it, and it turns red. <u>this means you're recording</u>. press it again to stop recording.</p>
            <p class="popout-body">this is a <u>play</u> button. press it to <u>play</u> the audio you just recorded.</p>
            <button class="play-button round-border button-width disable-dbl-tap-zoom centered">play 1</button>
            <p class="popout-body">you can <u>loop</u> the audio you just recorded.</p>
            <button class="param-button round-border button-width disable-dbl-tap-zoom centered" @click="toggleDudToggle">loop</button>
            <p class="popout-body">or randomize its <u>pitch</u>.</p>
            <button class="param-button round-border button-width disable-dbl-tap-zoom centered" @click="toggleDudPitch">pitch</button>
            <p class="popout-body">and randomly <u>crop</u> the recording, too.</p>
            <button class="param-button round-border button-width disable-dbl-tap-zoom centered" @click="toggleDudCrop">crop</button>
            <p class="popout-body">press the <u>feedback</u> button instantly output all sounds coming into the mic.</p>
            <button class="param-button round-border button-width disable-dbl-tap-zoom centered" @click="toggleDudFeedback">feedback</button>
            <p class="popout-body"><b>the Magic House</b> uses four different <u>effects</u>. drag your thumb (or mouse) across the multicolored pad below. individual <u>effects</u> are more pronounced in the corners of the box, while they blend together towards the middle.</p>
            <img src="./assets/imgs/houseeffectsgraphic.png" alt="An image explaining how the dragging-based effects in house work." class="tut-image centered">
            <p class="popout-body"><b>the Magic House</b> also has two modes: <u>recs</u> mode and <u>samples</u> mode. in <u>samples</u> mode, you use pre-recorded samples instead of your own recordings.</p>
            <div style="display: flex; flex-direction: row; justify-content: center; padding: auto;">
              <button class="param-button round-border button-width disable-dbl-tap-zoom" :style="{ backgroundColor: appState.dudBool ? 'gray' : 'white', color: appState.dudBool ? 'white' : 'gray' }" @click="toggleDudRecsSamps">recs</button>
              <button class="param-button round-border button-width disable-dbl-tap-zoom" :style="{ backgroundColor: !appState.dudBool ? 'gray' : 'white', color: !appState.dudBool ? 'white' : 'gray' }" @click="toggleDudRecsSamps" style="margin-left: 4rem;">samples</button>
            </div>
            <button class="play-button round-border button-width disable-dbl-tap-zoom centered">play 1</button>
            <div class="h1-container" style="display: flex; flex-direction: column; align-content: center; align-items: center;">
              <p class="subtext">need the cards? buy them <a href="https://gumroad.com/discover?a=335080211&gad_source=1&gad_campaignid=21838325751&gclid=CjwKCAjwyMnNBhBNEiwA-Kcgu5zAnmnS5uPfabl3-RKQw836mveYRmd1-jCzfq05hIh3arEJX_doDhoC5JQQAvD_BwE" target="_blank" rel="noopener noreferrer">here!</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Main App -->
    <div class="inner-container" v-if="!appState.showStart">
      <button @click="openPopout" style="position: fixed; top: 1rem; right: 1rem; z-index: 100;">≡</button>
      
      <div @mousedown="startDrag" @mousemove="dragging" @mouseup="endDrag" @touchstart="startDrag" @touchmove="draggingMobile" @touchend="endDrag" id="drag-container" class="thumb-toggle-container round-border big-margin" style="overflow: hidden; touch-action: none;" :style="{ backgroundImage: appState.backgroundGradient }">
        <div id="thumb-drag" class="thumb-drag" :style="{ left: appState.thumbX + 'px', top: appState.thumbY + 'px' }"></div>
      </div>

      <div class="buttons-container">
        <div class="param-button-row big-margin">
          <button class="param-button round-border button-width disable-dbl-tap-zoom" @click="toggleLoop" :style="{ backgroundColor: appState.toggleBool ? 'gray' : 'white', color: appState.toggleBool ? 'white' : 'gray' }">loop</button>
          <button class="param-button round-border button-width disable-dbl-tap-zoom" @click="togglePitch" :style="{ backgroundColor: appState.pitchBool ? 'gray' : 'white', color: appState.pitchBool ? 'white' : 'gray' }">pitch</button>
          <button class="param-button round-border button-width disable-dbl-tap-zoom" @click="toggleCrop" :style="{ backgroundColor: appState.cropBool ? 'gray' : 'white', color: appState.cropBool ? 'white' : 'gray' }">crop</button>
          <button class="param-button round-border button-width disable-dbl-tap-zoom" @click="toggleFeedback" :style="{ backgroundColor: appState.feedbackBool ? 'gray' : 'white', color: appState.feedbackBool ? 'white' : 'gray' }">feedback</button>
        </div>

        <div class="record-button-row small-margin" v-if="appState.isRecsBool">
          <button v-for="i in 4" :key="'rec-' + i" class="record-button round-border button-width disable-dbl-tap-zoom" @click="toggleRecord(i-1)" :style="{ backgroundColor: appState.recordBools[i-1] ? 'red' : 'white', color: appState.recordBools[i-1] ? 'white' : 'black' }">rec {{ i }}</button>
        </div>

        <div class="play-button-row big-margin" v-if="appState.isRecsBool">
          <button v-for="i in 4" :key="'play-' + i" class="play-button round-border button-width disable-dbl-tap-zoom" @mousedown="playOnToggling(i-1)" @mouseup="playOffToggling(i-1)" :style="{ backgroundColor: appState.playButtonColors[i-1] }">play {{ i }}</button>
        </div>

        <div class="secondary-samples-row big-margin" v-if="!appState.isRecsBool">
          <button v-for="i in 8" :key="'sample-' + i" class="play-button sample-button round-border button-width disable-dbl-tap-zoom" @mousedown="playOnToggling(7 + i)" @mouseup="playOffToggling(7 + i)" :style="{ backgroundColor: appState.playButtonColors[7 + i] }">sample {{ i }}</button>
        </div>
      </div>
    </div>
    </div>
  `
});

app.mount('#app');
