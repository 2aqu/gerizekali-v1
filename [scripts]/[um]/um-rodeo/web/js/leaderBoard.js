import { fetchNui } from "./fetchNui.js";

const leaderKeyDown = (e) => {
    if (e.key === 'Escape') {
      fetchNui('closeLeaderBoard');
      document.querySelector('.bullScoreBoard').style.visibility = 'hidden';
    }
  }

export const leaderBoard = (result) => {
  
  result.sort(function (a, b) {
    return b.score - a.score;
});

const positions = ['first', 'second', 'third'];
for (let i = 0; i < result.length; i++) {
    const person = document.querySelector(`.person.${positions[i]}`);
    person.querySelector('.photo').textContent = result[i].name[0]; // İsimlerin ilk harfi
    person.querySelector('.link').textContent = result[i].name;
    person.querySelector('.points').textContent = result[i].score;
}
    document.querySelector('.bullScoreBoard').style.visibility = 'visible';
    document.addEventListener('keydown', leaderKeyDown);
}