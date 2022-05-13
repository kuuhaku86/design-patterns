class Image:
  def __init__(self, imagePosition, imageSize):
    self.__imagePosition = imagePosition
    self.__imageSize = imageSize
  
  def rotate(self, degree):
    self.__imagePosition = abs(self.__imagePosition + degree) % 360
  
  def resize(self, percentage):
    self.__imageSize *= (percentage / 100)
  
  def inspect(self):
    print("""
    Image position: {0}
    Image size    : {1}
    """.format(
      self.__imagePosition,
      self.__imageSize
    ))