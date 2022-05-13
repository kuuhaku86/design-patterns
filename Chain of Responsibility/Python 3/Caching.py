from Handler import Handler
from Response import Response

class Caching(Handler):
  def __init__(self) -> None:
    super().__init__()
    self.data = {}

  def execute(self, request):
    if request.route in self.data:
      print("Cached")

      return self.data[request.route]
    else:
      temp_data = self.next_handler.execute(request)
      self.data[request.route] = temp_data

      return temp_data
