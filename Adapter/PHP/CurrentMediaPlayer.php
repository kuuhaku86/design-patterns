<?php

require_once "IMediaPlayer.php";

class CurrentMediaPlayer implements IMediaPlayer{
    public function playMKV(string $filename) {
        echo "Playing file " . $filename . " with MKV format\n";
    }

    public function playMP4(string $filename) {
        echo "Playing file " . $filename . " with MP4 format\n";
    }
}