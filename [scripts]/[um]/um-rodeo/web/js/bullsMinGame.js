import { fetchNui } from "./fetchNui.js";

const keyList = ['w', 'a', 's', 'd'];
let currentKey;
let timer;
let timeLimit = 8000;
let successCount = 0;
let score = 0;
let loadingBarInterval;

const startLoadingBar = () => {
  const loadingBar = document.getElementById('loadingBar');
  if (!loadingBar) return;
  let width = 0;
  clearInterval(loadingBarInterval);

  loadingBar.style.display = "block";
  loadingBarInterval = setInterval(() => {
    width += 100 / (timeLimit / 10);
    loadingBar.style.width = width + '%';

    if (width >= 100) {
      clearInterval(loadingBarInterval);
    }
  }, 10);
};

const resetLoadingBar = () => {
  const loadingBar = document.getElementById('loadingBar');
  if (!loadingBar) return;
  clearInterval(loadingBarInterval);
  loadingBar.style.width = '0%';
};

const moveKey = () => {
  const keyElement = document.getElementById('currentKey');
  const positions = ['left', 'center', 'right', 'top', 'bottom'];
  const randomPosition = positions[Math.floor(Math.random() * positions.length)];

  keyElement.style.position = 'absolute';

  keyElement.style.left = '';
  keyElement.style.right = '';
  keyElement.style.top = '';
  keyElement.style.bottom = '';

  switch (randomPosition) {
    case 'left':
      keyElement.style.left = '40px';
      keyElement.style.top = '50%';
      break;
    case 'center':
      keyElement.style.left = '50%';
      keyElement.style.top = '50%';
      break;
    case 'right':
      keyElement.style.right = '40px';
      keyElement.style.top = '50%';
      break;
    case 'top':
      keyElement.style.top = '40px';
      keyElement.style.left = '50%';
      break;
    case 'bottom':
      keyElement.style.bottom = '40px';
      keyElement.style.left = '50%';
      break;
  }
};

let myRodeoid;

const generateRandomKey = () => {
  const randomIndex = Math.floor(Math.random() * keyList.length);
  currentKey = keyList[randomIndex];
  const keyElement = document.getElementById('currentKey');
  const loadingBarElement = document.getElementById('loadingBar');
  keyElement.innerHTML = currentKey.toUpperCase();
  keyElement.appendChild(loadingBarElement);
  clearTimeout(timer);
  startLoadingBar();
  moveKey();
  timer = setTimeout(() => {
    fail();
  }, timeLimit);
};

const success = () => {
  successCount++;
  score += 100;

  if (successCount % 5 === 0) {
    timeLimit *= 0.8;
  }

  resetLoadingBar();
  generateRandomKey();
};

const fail = () => {
  document.getElementById('currentKey').style.backgroundColor = 'red';
  clearTimeout(timer);
  document.removeEventListener('keydown', handleKeyDown);
  setTimeout(() => {
    fetchNui('fail', { score: score, id: myRodeoid })
    document.querySelector('.minGame').style.visibility = 'hidden';
  }, 300);
};

const applyEffect = () => {
  const keyElement = document.getElementById('currentKey');
  keyElement.style.transform = 'scale(1.8)';
  keyElement.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.5)';
};

const removeEffect = () => {
  const keyElement = document.getElementById('currentKey');
  keyElement.style.transform = '';
  keyElement.style.boxShadow = '';
};


const resetMinigame = () => {
    successCount = 0;
    score = 0;
    timeLimit = 4000;
    resetLoadingBar();
    document.getElementById('currentKey').style.backgroundColor = '';
    document.addEventListener('keydown', handleKeyDown);
  }
  
  
const handleKeyDown = (event) => {
    if (event.key.toLowerCase() === currentKey) {
      applyEffect(); // Efektleri uygula
      setTimeout(removeEffect, 100); // 100ms sonra efektleri kaldır
      success();
    } else {
      fail();
      applyEffect(); // Efektleri uygula
      setTimeout(removeEffect, 100); // 100ms sonra efektleri kaldır
    }
  }



export const bullsMinGame = (id) => {
  resetMinigame();
  document.querySelector('.minGame').style.visibility = 'visible';
    myRodeoid = id;
    generateRandomKey();
}