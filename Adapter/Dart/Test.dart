import 'CurrentMediaPlayer.dart';
import 'IMediaPlayer.dart';
import 'MediaAdapter.dart';
import 'MoviePlayer.dart';

void main(List<String> args) {
  IMediaPlayer currentMediaPlayer = CurrentMediaPlayer();
  MediaAdapter mediaAdapter = MediaAdapter(currentMediaPlayer);
  MoviePlayer moviePlayer = MoviePlayer(mediaAdapter);

  // Testing for MKV
  moviePlayer.play('Harry Potter.mkv');

  // Testing for MP4
  moviePlayer.play('The lord of the rings.mp4');

  // Testing for unsupported file
  moviePlayer.play("Book.pdf");

  // Testing for invalid string
  moviePlayer.play("Random string");
}
