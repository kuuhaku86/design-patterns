require_relative "Command"

class CreateCommand < Command
    def initialize(mediator, file)
        super(mediator, file)
    end

    def describe
        puts "Creating file: #{@file}"
    end
end