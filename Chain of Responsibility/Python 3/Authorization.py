from Handler import Handler
from Response import Response

class Authorization(Handler):
  def execute(self, request):
    if request.authorized:
      print("Authorized")
      return self.next_handler.execute(request)
    else:
      return Response(403, "Unauthorized", None)
