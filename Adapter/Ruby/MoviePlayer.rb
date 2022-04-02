class MoviePlayer
    def initialize(mediaPlayer)
        @mediaPlayer = mediaPlayer
    end

    def play(filename)
        @mediaPlayer.playMovie(filename)
    end
end