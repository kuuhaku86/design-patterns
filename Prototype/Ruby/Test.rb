require_relative "ApplicationServer"
require_relative "DatabaseServer"

# Create Prototype
applicationServer = ApplicationServer.new
databaseServer = DatabaseServer.new

# Test application server
applicationServer1 = applicationServer.clone
applicationServer1.describe
applicationServer2 = applicationServer.clone
applicationServer2.describe

# Test database server
databaseServer1 = databaseServer.clone
databaseServer1.describe
databaseServer2 = databaseServer.clone
databaseServer2.describe