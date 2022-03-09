<?php

require_once "Thread.php";

class ThreadPool {
    private array $threads;
    private int $counter;

    public function __construct()
    {
        $this->threads = [];
        $this->counter = 2;

        for ($i=1; $i <= 2 ; $i++) { 
            $thread = new Thread($i);

            $this->threads[] = $thread;
        }
    }

    public function get() {
        $thread = null;

        if (count($this->threads) > 0) {
            $thread = array_shift($this->threads);
        } else {
            $this->counter++;

            $thread = new Thread($this->counter);
        }

        return $thread;
    }

    public function release(Thread $thread) {
        $this->threads[] = $thread;
    }
}