package main

func main()  {
	currentMediaPlayer := CurrentMediaPlayer{}
	mediaAdapter := MediaAdapter{
		Player: &currentMediaPlayer,
	}
	moviePlayer := MoviePlayer{
		MediaAdapter: mediaAdapter,
	}


	// Testing for mkv
	moviePlayer.play("Harry Potter.mkv")

	// Testing for mp4
	moviePlayer.play("The lord of the rings.mp4")

	// Testing for unsupported file type
	moviePlayer.play("Book.pdf")

	// Testing for invalid string
	moviePlayer.play("Random string")
}