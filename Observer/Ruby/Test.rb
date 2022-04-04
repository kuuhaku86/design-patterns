require_relative "Server"
require_relative "AverageObserver"
require_relative "MaxObserver"

server = Server.new
averageObserver = AverageObserver.new
maxObserver = MaxObserver.new

# Attach observer
server.attach(averageObserver)
server.attach(maxObserver)

# Test update
server.updateResources
server.describeResources

# Test update
server.updateResources
server.describeResources

# Test update
server.updateResources
server.describeResources