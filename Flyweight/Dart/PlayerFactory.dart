import 'CounterTerrorist.dart';
import 'IPlayer.dart';
import 'Terrorist.dart';

class PlayerFactory {
  Map _players = {};

  IPlayer? createPlayer(String type) {
    if (_players[type] != null) {
      return _players[type];
    } else {
      IPlayer? player = null;

      switch (type) {
        case "Terrorist":
          player = Terrorist();
          _players[type] = player;
          break;
        case "CounterTerrorist":
          player = CounterTerrorist();
          _players[type] = player;
          break;
      }

      return player;
    }
  }
}
