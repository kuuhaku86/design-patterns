require_relative "IConnectionFactory.rb"
require_relative "TeamAssessmentHTTPConnection.rb"
require_relative "TeamAssessmentRPCConnection.rb"

class TeamAssessmentConnectionFactory < IConnectionFactory
    def createHTTPConnection
        TeamAssessmentHTTPConnection.new
    end

    def createRPCConnection
        TeamAssessmentRPCConnection.new
    end
end

