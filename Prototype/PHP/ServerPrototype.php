<?php

abstract class ServerPrototype {
    private string $content;

    abstract function __clone();

    public function __construct(string $content)
    {
        $this->content = $content;
    }

    public function describe()
    {
        echo "The content of this server is " . $this->content . "\n";
    }

}