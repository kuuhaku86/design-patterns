<?php

interface IMediaPlayer {
    public function playMKV(string $filename);
    public function playMP4(string $filename);
}