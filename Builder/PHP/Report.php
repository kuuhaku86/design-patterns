<?php

class Report {
    private string $filename;
    private string $content;

    public function setFilename(string $filename) {
        $this->filename = $filename;
    }

    public function setContent(string $content) {
        $this->content = $content;
    }

    public function describe() {
        if ($this->filename) {
            echo "The name of the file is " . $this->filename . "\n";
        } else {
            echo "The file doesn't have any name\n";
        }

        if ($this->content) {
            echo "The content of the file is " . $this->content . "\n";
        } else {
            echo "The file doesn't have any content\n";
        }
    }
}