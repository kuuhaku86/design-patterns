<?php
require_once('ICommand.php');
require_once('Image.php');

class Rotate implements ICommand {
    private Image $target;
    private int $degree;

    public function __construct(Image $target, int $degree)
    {
        $this->target = $target;
        $this->degree = $degree;
    }

    public function execute() 
    {
        $this->target->rotate($this->degree);
    }
}