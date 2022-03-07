package main

import "fmt"

type CurrentMediaPlayer struct {}

func (currentMediaPlayer *CurrentMediaPlayer) playMKV(filename string) {
    fmt.Println("Playing file", filename, "with MKV format")
}

func (currentMediaPlayer *CurrentMediaPlayer) playMP4(filename string) {
    fmt.Println("Playing file", filename, "with MKV format")
}