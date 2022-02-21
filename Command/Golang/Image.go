package main

import (
	"fmt"
	"math"
)

type Image struct {
	ImagePosition int
	ImageSize	  float64
}

func (image *Image) rotate(degree int) {
	image.ImagePosition = int(math.Abs(float64(image.ImagePosition + degree))) % 360
}

func (image *Image) resize(percentage int) {
	image.ImageSize *= float64(percentage) / 100.0
}

func (image *Image) inspect() {
	fmt.Println(
		"Image Position:", 
		image.ImagePosition, 
		"\n",
		"Image Size:", 
		image.ImageSize,
		"\n",
		"\n",
	)
}