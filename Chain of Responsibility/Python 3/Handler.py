class Handler:
  def set_next_handler(self, handler):
    self.next_handler = handler
  
  def execute(self, request):
    raise NotImplementedError