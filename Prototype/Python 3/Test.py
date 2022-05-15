from ApplicationServer import ApplicationServer
from DatabaseServer import DatabaseServer

# Create Prototype
applicationServer = ApplicationServer()
databaseServer = DatabaseServer()

# Test application server
applicationServer1 = applicationServer.clone()
applicationServer1.describe()
applicationServer2 = applicationServer.clone()
applicationServer2.describe()

# Test database server
databaseServer1 = databaseServer.clone()
databaseServer1.describe()
databaseServer2 = databaseServer.clone()
databaseServer2.describe()
