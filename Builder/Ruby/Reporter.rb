class Reporter
    def initialize(builder)
        @builder = builder
    end
    
    def createReport
        @builder.buildContent
        @builder.buildFile

        @builder.getResult
    end
end