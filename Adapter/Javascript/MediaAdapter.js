class MediaAdapter {
  constructor(moviePlayer) {
    this.moviePlayer = moviePlayer;
  }

  playMovie(movie) { 
    const filename_detail = movie.toLowerCase().split('.');
    const count_arr = filename_detail.length; 

    if (count_arr < 2) {
      console.log('File not valid');
      return;
    }

    switch (filename_detail[count_arr - 1]) {
      case "mkv":
        this.moviePlayer.playMKV(movie);
        break;

      case "mp4":
        this.moviePlayer.playMP4(movie);
        break;
    
      default:
        console.log("File not supported");
        break;
    }
  }
}

export default MediaAdapter;