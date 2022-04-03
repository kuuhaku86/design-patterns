require_relative "Command"

class DeleteCommand < Command
    def initialize(mediator, file)
        super(mediator, file)
    end

    def describe
        puts "Deleting file: #{@file}"
    end
end