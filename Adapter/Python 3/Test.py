from CurrentMediaPlayer import CurrentMediaPlayer
from MediaAdapter import MediaAdapter
from MoviePlayer import MoviePlayer

currentMediaPlayer = CurrentMediaPlayer()
mediaAdapter = MediaAdapter(currentMediaPlayer)
moviePlayer = MoviePlayer(mediaAdapter)

# Testing for MKV
moviePlayer.play("Harry Potter.mkv")

# Testing for MP4
moviePlayer.play("The lord of the rings.mp4")

# Testing for unsupported file
moviePlayer.play("Book.pdf")

# Testing for invalid file
moviePlayer.play("Random string")
