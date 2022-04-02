require_relative "CurrentMediaPlayer"
require_relative "MediaAdapter"
require_relative "MoviePlayer"

currentMediaPlayer = CurrentMediaPlayer.new
mediaAdapter = MediaAdapter.new(currentMediaPlayer)
moviePlayer = MoviePlayer.new(mediaAdapter)

# Testing for MKV
moviePlayer.play("Harry Potter.mkv")

# Testing for MP4
moviePlayer.play("The lord of the rings.mp4")

# Testing for unsupported file
moviePlayer.play("Book.pdf")

# Testing for invalid string
moviePlayer.play("Random string")