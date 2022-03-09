<?php

require_once('ThreadPool.php');

class Test {
    public static function main() {
        $threadPool = new ThreadPool;
        $threads = [];

        // Get thread
        for ($i=0; $i < 3 ; $i++) { 
            $threads[] = $threadPool->get();
        }

        // Describe the threads
        foreach ($threads as $thread) {
            $thread->describe();
        }

        // Release threads
        for ($i=0; $i < 3 ; $i++) { 
            $thread = array_pop($threads);
            $threadPool->release($thread);
        }


        // Get thread
        for ($i=0; $i < 4 ; $i++) { 
            $threads[] = $threadPool->get();
        }

        // Describe the threads
        foreach ($threads as $thread) {
            $thread->describe();
        }
    }
}

Test::main();


