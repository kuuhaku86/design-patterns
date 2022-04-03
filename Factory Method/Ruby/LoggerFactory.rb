require_relative "InfoLogger"
require_relative "WarningLogger"
require_relative "ErrorLogger"
require_relative "LoggerType"

class LoggerFactory
    def create(type)
        case type
            when LoggerType::InfoLoggerType
                return InfoLogger.new
            when LoggerType::WarningLoggerType
                return WarningLogger.new
            when LoggerType::ErrorLoggerType
                return ErrorLogger.new
            else
                return nil
        end
    end
end