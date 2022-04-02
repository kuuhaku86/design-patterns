require_relative "IRPCConnection"

class TeamPromoRPCConnection < IRPCConnection
    def callProcedure
        puts "Calling procedure from Promo Team"
    end
end