class IObserver:
  def update(self, cpu, ram):
    raise NotImplementedError