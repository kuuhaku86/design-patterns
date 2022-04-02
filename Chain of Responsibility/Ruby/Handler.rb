class Handler
    def set_next_handler(handler)
        @next_handler = handler
    end

    def execute(request)
        raise NotImplementedError
    end
end