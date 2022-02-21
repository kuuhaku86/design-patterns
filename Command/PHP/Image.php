<?php

class Image {
    private int $imagePosition;
    private float $imageSize;

    public function __construct(int $imagePosition, float $imageSize) {
        $this->imagePosition = $imagePosition;
        $this->imageSize = $imageSize;
    }

    public function rotate(int $degree) {
        $this->imagePosition = abs(($this->imagePosition + $degree)) % 360;
    }

    public function resize(int $percentage) {
        $this->imageSize *= ($percentage / 100);
    }

    public function inspect() {
        echo "
            Image Position  : {$this->imagePosition}
            Image Size      : {$this->imageSize}
        ";
    }
}