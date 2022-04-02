class Response
    attr_reader :data, :code, :message

    def initialize(code:, message:, data:)
        @code = code
        @message = message
        @data = data
    end

    def describe
        puts "#{@code} : #{@message}"
    end
end