<?php

require_once "IObserver.php";

class Server {
    private int $CPU = 0, 
                $RAM = 0;
    private array $observers = [];

    public function attach(IObserver $observer) {
        $this->observers[] = $observer;
    }

    public function updateResource() {
        $this->CPU = rand(0,100);
        $this->RAM = rand(0,100);

        foreach ($this->observers as $observer) {
            $observer->update($this->CPU, $this->RAM);
        }
    }

    public function describeResource() {
        echo "Current CPU: {$this->CPU}\nCurrent RAM: {$this->RAM}\n";
    }
}