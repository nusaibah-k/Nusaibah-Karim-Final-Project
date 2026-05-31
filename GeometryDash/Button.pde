class Button{

  private float x;
  private float y;
  private float width;
  private float height;
  private String text;

  Button(float x, float y, float width, float height, String text) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.text = text;
  }
  
   void display() {
    fill(50, 150, 255);
    rect(x, y, width, height, 10);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(24);
    text(text, x + width / 2, y + height / 2);
  }

  boolean isClicked() {
    return mouseX >= x &&
           mouseX <= x + width &&
           mouseY >= y &&
           mouseY <= y + height;
  }
}
