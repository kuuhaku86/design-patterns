class MoviePlayer:
  def __init__(self, mediaPlayer):
    self.mediaPlayer = mediaPlayer

  def play(self, filename):
    self.mediaPlayer.playMovie(filename)