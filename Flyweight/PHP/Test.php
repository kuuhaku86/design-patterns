<?php

require_once('PlayerFactory.php');

class Test {
    private static $terroristMission = [
        "Plant Bomb",
        "Watch for Counter Terrorist",
        "Secure Place for Plant Bomb"
    ];
    private static $counterTerroristMission = [
        "Defuse Bomb",
        "Searching for Terrorist",
        "Take Over The Area"
    ];

    public static function main() {
        $playerFactory = new PlayerFactory;
        $types = [
            "Terrorist",
            "CounterTerrorist"
        ];

        // Generate player with task and do mission
        for ($i=0; $i < 20; $i++) { 
            $type = $types[array_rand($types)];
            $player = $playerFactory->createPlayer($type);

            if ($type == $types[0]) {
                $task = Test::$terroristMission[array_rand(Test::$terroristMission)];
                $player->assignTask($task);
            } else {
                $task = Test::$counterTerroristMission[array_rand(Test::$counterTerroristMission)];
                $player->assignTask($task);
            }

            $player->doMission();
        }
    }
}

Test::main();

