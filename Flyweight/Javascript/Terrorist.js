import IPlayer from './IPlayer.js';

class Terrorist extends IPlayer {
  setMission(mission) {
    this.mission = mission;
  }

  doMission() {
    console.log(`Terrorist doing task : ${this.mission}`);
  }
}

export default Terrorist;
