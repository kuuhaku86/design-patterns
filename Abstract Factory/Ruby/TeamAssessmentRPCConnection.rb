require_relative "IRPCConnection"

class TeamAssessmentRPCConnection < IRPCConnection
    def callProcedure
        puts "Calling procedure from Assessment Team"
    end
end