<?php
require_once('ICommand.php');
require_once('Image.php');

class Inspect implements ICommand {
    private Image $target;

    public function __construct(Image $target)
    {
        $this->target = $target;
    }

    public function execute() 
    {
        $this->target->inspect();
    }
}