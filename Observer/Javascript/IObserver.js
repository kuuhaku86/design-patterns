class IObserver {
  update(cpu, ram) {
    throw new Error("Not implemented");
  }
}

export default IObserver;