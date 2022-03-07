<?php

require_once "MediaAdapter.php";

class MoviePlayer {
    private MediaAdapter $mediaAdapter;

    public function __construct(MediaAdapter $mediaAdapter)
    {
        $this->mediaAdapter = $mediaAdapter;
    }

    public function play(string $filename) {
        $this->mediaAdapter->playMovie($filename);
    }
}