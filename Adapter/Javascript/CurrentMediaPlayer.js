import IMediaPlayer from "./IMediaPlayer.js";

class CurrentMediaPlayer extends IMediaPlayer {
  playMKV(filename) {
    console.log(`Playing file ${filename} with MKV format`);
  }

  playMP4(filename) {
    console.log(`Playing file ${filename} with MP4 format`);
  }
}

export default CurrentMediaPlayer;