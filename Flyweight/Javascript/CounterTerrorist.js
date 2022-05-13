import IPlayer from './IPlayer.js';

class CounterTerrorist extends IPlayer {
  setMission(mission) {
    this.mission = mission;
  }

  doMission() {
    console.log(`Counter Terrorist doing task : ${this.mission}`);
  }
}

export default CounterTerrorist;