import 'MediaAdapter.dart';

class MoviePlayer {
  MediaAdapter? _mediaAdapter;

  MoviePlayer(MediaAdapter mediaAdapter) {
    _mediaAdapter = mediaAdapter;
  }

  void play(String filename) {
    _mediaAdapter?.playMovie(filename);
  }
}
