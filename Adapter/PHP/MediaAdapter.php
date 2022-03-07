<?php

require_once "IMediaPlayer.php";

class MediaAdapter {
    private IMediaPlayer $mediaPlayer;

    public function __construct(IMediaPlayer $mediaPlayer)
    {
        $this->mediaPlayer = $mediaPlayer;
    }

    public function playMovie(string $filename) {
        $filename_detail = explode(".", strtolower($filename));
        $count_arr = count($filename_detail);

        if ($count_arr < 2) {
            echo "File not valid\n";
            return;
        }

        switch ($filename_detail[$count_arr - 1]) {
            case 'mkv':
                $this->mediaPlayer->playMKV($filename);
                break;

            case 'mp4':
                $this->mediaPlayer->playMP4($filename);
                break;
            
            default:
                echo "File type not supported\n";
                break;
        }
    }
}