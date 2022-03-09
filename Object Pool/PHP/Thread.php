<?php

class Thread {
    private int $number;

    public function __construct(int $number)
    {
        $this->number = $number;
    }

    public function describe() {
        echo "This is thread number " . $this->number . "\n";
    }
}