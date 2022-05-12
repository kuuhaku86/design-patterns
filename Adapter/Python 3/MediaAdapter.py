class MediaAdapter:
  def __init__(self, moviePlayer):
    self.moviePlayer = moviePlayer

  def playMovie(self, filename):
    filename_detail = filename.lower().split('.')
    count_arr = len(filename_detail)

    if count_arr < 2:
      print("File not valid")
      return

    if filename_detail[count_arr - 1] == 'mkv':
      self.moviePlayer.playMKV(filename)
    elif filename_detail[count_arr - 1] == 'mp4':
      self.moviePlayer.playMP4(filename)
    else:
      print("File not supported")