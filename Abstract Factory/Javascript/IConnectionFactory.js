class IConnectionFactory {
  createRPCConnection() {
    throw new Error('Not implemented');
  }

  createHTTPConnection() {
    throw new Error('Not implemented');
  }
}

export default IConnectionFactory;