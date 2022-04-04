class DownloadManager
    attr_writer :current

    def initialize(state)
        @current = state
    end

    def action
        @current.action
    end
end


