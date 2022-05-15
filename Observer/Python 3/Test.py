from Server import Server
from AverageObserver import AverageObserver
from MaxObserver import MaxObserver

server = Server()
averageObserver = AverageObserver()
maxObserver = MaxObserver()

# Attach observer
server.attach(averageObserver)
server.attach(maxObserver)

# Test update
server.updateResources()
server.describeResources()

# Test update
server.updateResources()
server.describeResources()

# Test update
server.updateResources()
server.describeResources()
