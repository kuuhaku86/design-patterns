<?php

require_once "IPlayer.php";
require_once "Terrorist.php";
require_once "CounterTerrorist.php";

class PlayerFactory {
    private array $players = [];

    public function createPlayer(string $type) {
        if (array_key_exists($type, $this->players)) {
            return $this->players[$type];
        } else {
            $player = null;

            switch ($type) {
                case 'Terrorist':
                    $player = new Terrorist;
                    $this->players[$type] = $player;
                    break;

                case 'CounterTerrorist':
                    $player = new CounterTerrorist;
                    $this->players[$type] = $player;
                    break;
            }

            return $player;
        }
    }
}