import PlayerFactory from "./PlayerFactory.js";

const terroristMission = [
  "Plant Bomb",
  "Watch for Counter Terrorist",
  "Secure Place for Plant Bomb"
];

const counterTerroristMission = [
  "Defuse Bomb",
  "Searching for Terrorist",
  "Take Over the Area"
];

const types = [
  "Terrorist",
  "CounterTerrorist"
];

const playerFactory = new PlayerFactory();

for (let index = 0; index < 20; index++) {
  let type = types[Math.floor(Math.random()*types.length)];
  let player = playerFactory.createPlayer(type);
  let task = "";

  switch (type) {
    case types[0]:
      task = terroristMission[Math.floor(Math.random()*terroristMission.length)];
      player.setMission(task);
      break;

    case types[1]:
      task = counterTerroristMission[Math.floor(Math.random()*counterTerroristMission.length)];
      player.setMission(task);
      break;
  }

  player.doMission();
}