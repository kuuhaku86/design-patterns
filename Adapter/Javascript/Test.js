import CurrentMediaPlayer from "./CurrentMediaPlayer.js";
import MediaAdapter from "./MediaAdapter.js";
import MoviePlayer from "./MoviePlayer.js";

const currentMediaPlayer = new CurrentMediaPlayer();
const mediaAdapter = new MediaAdapter(currentMediaPlayer);
const moviePlayer = new MoviePlayer(mediaAdapter);

// Testing for MKV
moviePlayer.play("Harry Potter.mkv");

// Testing for MP4
moviePlayer.play("The lord of the rings.mp4");

// Testing for unsupported file
moviePlayer.play("Book.pdf");

// Testing for invalid file
moviePlayer.play("Random String");