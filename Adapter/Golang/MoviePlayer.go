package main

type MoviePlayer struct {
	MediaAdapter MediaAdapter
}

func (moviePlayer *MoviePlayer) play(filename string) {
	moviePlayer.MediaAdapter.playMovie(filename)
}