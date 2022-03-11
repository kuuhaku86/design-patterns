<?php

require_once "IObserver.php";

class MaxObserver implements IObserver {
    private int $maxCPU = 0, 
                $maxRAM = 0;

    public function update(int $CPU, int $RAM) {
        $this->maxCPU = max($this->maxCPU, $CPU);
        $this->maxRAM = max($this->maxRAM, $RAM);

        echo "Current Max CPU: {$this->maxCPU}\nCurrent Max RAM: {$this->maxRAM}\n";
    }
}