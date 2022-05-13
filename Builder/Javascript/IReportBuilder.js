class IReportBuilder {
  buildContent() {
    throw new Error('Not implemented');
  }

  buildFile() {
    throw new Error('Not implemented');
  }

  getResult() {
    throw new Error('Not implemented');
  }
}

export default IReportBuilder;