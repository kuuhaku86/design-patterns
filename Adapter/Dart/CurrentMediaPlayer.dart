import 'IMediaPlayer.dart';

class CurrentMediaPlayer implements IMediaPlayer {
  void playMKV(String filename) {
    print('Playing file $filename with MKV format');
  }

  void playMP4(String filename) {
    print('Playing file $filename with MP4 format');
  }
}
