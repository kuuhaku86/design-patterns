require_relative "Report"
require_relative "IReportBuilder"

class ExcelReportBuilder < IReportBuilder
    def buildContent
        if !@report
            @report = Report.new
        end

        @report.content = "Tables"
    end

    def buildFile
        if !@report
            @report = Report.new
        end

        @report.filename = "Report.xlsx"
    end

    def getResult
        @report
    end
end