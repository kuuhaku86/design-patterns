from Handler import Handler
from Response import Response
import random

class System(Handler):
  def execute(self, request):
    return Response(200, "OK", random.randint(0, 100))
