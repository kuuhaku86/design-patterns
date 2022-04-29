import 'PlayerFactory.dart';

void main(List<String> args) {
  var terroristMission = [
    "Plant Bomb",
    "Watch for Counter Terrorist",
    "Secure Place for Plant Bomb"
  ];
  var counterTerroristMission = [
    "Defuse Bomb",
    "Searching for Terrorist",
    "Take Over The Area"
  ];
  PlayerFactory playerFactory = PlayerFactory();
  var types = ["Terrorist", "CounterTerrorist"];

  for (var i = 0; i < 20; i++) {
    var type = (types..shuffle()).first;
    var player = playerFactory.createPlayer(type);

    if (type == types[0]) {
      var task = (terroristMission..shuffle()).first;
      player?.assignTask(task);
    } else {
      var task = (counterTerroristMission..shuffle()).first;
      player?.assignTask(task);
    }

    player?.doMission();
  }
}
