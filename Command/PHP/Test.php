<?php

require_once('Editor.php');
require_once('Image.php');
require_once('Inspect.php');
require_once('Rotate.php');
require_once('Resize.php');

class Test {
    public static function main() {
        $editor = new Editor;
        $image = new Image(0, 1000);

        $inspect = new Inspect($image);
        $resize = new Resize($image, 20);
        $rotate = new Rotate($image, 30);

        // Inspect initial state
        $editor->input($inspect);

        // Resize by 20 percent
        $editor->input($resize);
        $editor->input($inspect);

        // Rotate by 30 degree
        $editor->input($rotate);
        $editor->input($inspect);

        // Resize by 20 percent again
        $editor->input($resize);
        $editor->input($inspect);

        // Rotate by 30 degree again
        $editor->input($rotate);
        $editor->input($inspect);

        // Execute all commands
        $editor->executeCommands();
    }
}

Test::main();

