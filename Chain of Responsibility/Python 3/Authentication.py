from Handler import Handler
from Response import Response

class Authentication(Handler):
  def execute(self, request):
    if request.authenticated:
      print("Authenticated")
      return self.next_handler.execute(request)
    else:
      return Response(403, "Unauthenticated", None)