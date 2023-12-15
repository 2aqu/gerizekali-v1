import { bullsMinGame } from './bullsMinGame.js';
import { leaderBoard } from './leaderBoard.js';

window.addEventListener('message', (event) => {
  if (event.data.action === 'openMiniGame') {
        bullsMinGame(event.data.id);
  } else if (event.data.action === 'leaderboard') {
        leaderBoard(event.data.result);
  }
});