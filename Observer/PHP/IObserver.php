<?php

interface IObserver {
    public function update(int $CPU, int $RAM);
}