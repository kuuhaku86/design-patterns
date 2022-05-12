from IMediaPlayer import IMediaPlayer

class CurrentMediaPlayer(IMediaPlayer):
  def playMKV(self, filename):
    print("Playing file {} with MKV format".format(filename))

  def playMP4(self, filename):
    print("Playing file {} with MP4 format".format(filename))