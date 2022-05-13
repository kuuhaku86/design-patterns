import CounterTerrorist from "./CounterTerrorist.js";
import Terrorist from "./Terrorist.js";

class PlayerFactory {
  constructor() {
    this.players = {};
  }

  createPlayer(type) {
    if (this.players[type]) {
      return this.players[type];
    } else {
      let player = null;

      switch (type) {
        case "Terrorist":
          player = new Terrorist();
          this.players[type] = player;
          break;

        case "CounterTerrorist":
          player = new CounterTerrorist();
          this.players[type] = player;
          break;
      }

      return player;
    }
  }
}

export default PlayerFactory;