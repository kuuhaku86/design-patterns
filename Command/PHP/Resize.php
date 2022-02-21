<?php
require_once('ICommand.php');
require_once('Image.php');

class Resize implements ICommand {
    private Image $target;
    private int $percentage;

    public function __construct(Image $target, int $percentage)
    {
        $this->target = $target;
        $this->percentage = $percentage;
    }

    public function execute() 
    {
        $this->target->resize($this->percentage);
    }
}