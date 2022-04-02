class IReportBuilder
    def buildContent
        raise NotImplementError
    end

    def buildFile
        raise NotImplementError
    end

    def getResult
        raise NotImplementError
    end
end