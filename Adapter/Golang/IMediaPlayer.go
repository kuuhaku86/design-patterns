package main

type IMediaPlayer interface {
	playMKV(filename string)
	playMP4(filename string)
}