class IConnectionFactory:
  def createRPCConnection(self):
    raise NotImplementedError
  
  def createHTTPConnection(self):
    raise NotImplementedError
    