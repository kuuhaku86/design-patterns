<?php

require_once "IObserver.php";

class AverageObserver implements IObserver {
    private float $averageCPU = 0, 
                $averageRAM = 0;
    private int $counter = 0;
    private array $resources = [];

    public function update(int $CPU, int $RAM) {
        $this->resources[] = [$CPU, $RAM];
        $tempAverageCPU = 0;
        $tempAverageRAM = 0;
        $this->counter++;

        foreach ($this->resources as $resource) {
            $tempAverageCPU += $resource[0];
            $tempAverageRAM += $resource[1];
        }

        $this->averageCPU = $tempAverageCPU / $this->counter;
        $this->averageRAM = $tempAverageRAM / $this->counter;

        echo "Current Average CPU: {$this->averageCPU}\nCurrent Average RAM: {$this->averageRAM}\n";
    }
}