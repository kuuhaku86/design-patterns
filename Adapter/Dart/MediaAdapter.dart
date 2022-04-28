import 'IMediaPlayer.dart';

class MediaAdapter {
  IMediaPlayer? _mediaPlayer;

  MediaAdapter(IMediaPlayer mediaPlayer) {
    _mediaPlayer = mediaPlayer;
  }

  void playMovie(String filename) {
    final filename_detail = filename.split('.');
    final count_arr = filename_detail.length;

    if (count_arr < 2) {
      print('File not valid');
      return;
    }

    switch (filename_detail[count_arr - 1].toLowerCase()) {
      case "mkv":
        _mediaPlayer?.playMKV(filename);
        break;

      case "mp4":
        _mediaPlayer?.playMP4(filename);
        break;

      default:
        print('File type not supported');
        break;
    }
  }
}
