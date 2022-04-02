require_relative "IMediaPlayer"

class CurrentMediaPlayer < IMediaPlayer
    def playMKV(filename)
        puts "Playing file #{filename} with MKV format" 
    end

    def playMP4(filename)
        puts "Playing file #{filename} with MP4 format" 
    end
end