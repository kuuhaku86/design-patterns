<?php
require_once('MoviePlayer.php');
require_once('MediaAdapter.php');
require_once('CurrentMediaPlayer.php');

class Test {
    public static function main() {
        $currentMediaPlayer = new CurrentMediaPlayer;
        $mediaAdapter = new MediaAdapter($currentMediaPlayer);
        $moviePlayer = new MoviePlayer($mediaAdapter);

        // Testing for mkv
        $moviePlayer->play("Harry Potter.mkv");

        // Testing for mp4
        $moviePlayer->play("The lord of the rings.mp4");

        // Testing for unsupported file type
        $moviePlayer->play("Book.pdf");

        // Testing for invalid string
        $moviePlayer->play("Random string");
    }
}

Test::main();