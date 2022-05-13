class Image {
  constructor(imagePosition, imageSize) {
    this.imagePosition = imagePosition;
    this.imageSize = imageSize;
  }

  rotate(degree) {
    this.imagePosition = Math.abs(this.imagePosition + degree) % 360;
  }

  resize(percentage) {
    this.imageSize *= (percentage / 100);
  }

  inspect() {
    console.log(`
      Image position: ${this.imagePosition}
      Image size    : ${this.imageSize}
    `);
  }
}

export default Image;