class Button {

  private float x;
  private float y;
  private float w;
  private float h;
  private String label;

  Button(float x, float y, float w, float h, String label) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;}

  void display(){
    fill(0, 200, 255);
    rect(x, y, w, h, 10);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(24);
    text(label, x + w/2, y + h/2);}

  boolean isClicked() {return mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h;}
}
