class MediaAdapter
    def initialize(moviePlayer)
        @moviePlayer = moviePlayer
    end

    def playMovie(filename)
        filename_detail = filename.downcase.split(".")
        count_arr = filename_detail.length

        if count_arr < 2
            puts "File not valid"
            return
        end

        case filename_detail[count_arr - 1]
            when "mkv"
                @moviePlayer.playMKV(filename)
            when "mp4"
                @moviePlayer.playMP4(filename)
            else
                puts "File not supported"
        end
    end
end