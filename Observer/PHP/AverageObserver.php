<?php

require_once "IObserver.php";

class AverageObserver implements IObserver {
    private float $averageCPU = 0, 
                $averageRAM = 0;
    private int $counter = 0;
    private array $resources = [];

    public function update(int $CPU, int $RAM) {
        $this->resources[] = [$CPU, $RAM];
        $tempCPU = 0;
        $tempRAM = 0;
        $this->counter++;

        foreach ($this->resources as $resource) {
            $tempCPU += $resource[0];
            $tempRAM += $resource[1];
        }

        $this->averageCPU = $tempCPU / $this->counter;
        $this->averageRAM = $tempRAM / $this->counter;

        echo "Current Average CPU: {$this->averageCPU}\nCurrent Average RAM: {$this->averageRAM}\n";
    }
}