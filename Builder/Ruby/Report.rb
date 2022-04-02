class Report
    attr_writer :filename, :content

    def describe
        if @filename
            puts "The name of file is #{@filename}"
        else
            puts "The file doesn't has any name"
        end

        if @content
            puts "The content of the file is #{@content}"
        else
            puts "The file doesn't has any content"
        end
    end
end