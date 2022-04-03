class Image
    def initialize(imagePosition, imageSize)
        @imagePosition = imagePosition
        @imageSize = imageSize.to_f
    end

    def rotate(degree)
        @imagePosition = (@imagePosition + degree).abs % 360
    end

    def resize(percentage)
        @imageSize *= (percentage.to_f / 100).to_f
    end

    def to_s
        "Image Position : #{@imagePosition}\nImage Size     : #{@imageSize}"
    end
end