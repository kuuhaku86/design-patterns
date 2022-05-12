class MoviePlayer {
  constructor(mediaPlayer) {
    this.mediaPlayer = mediaPlayer;
  }

  play(filename) {
    this.mediaPlayer.playMovie(filename);
  }
}

export default MoviePlayer;