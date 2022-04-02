require_relative "Report"
require_relative "IReportBuilder"

class PDFReportBuilder < IReportBuilder
    def buildContent
        if !@report
            @report = Report.new
        end

        @report.content = "Summary"
    end

    def buildFile
        if !@report
            @report = Report.new
        end

        @report.filename = "Report.pdf"
    end

    def getResult
        @report
    end
end