class Particle{
  
  // Major issue: The particles would constantly clutter on the left side of the screen.

  private float x;
  private float y;
  private float w;
  private float h;
  private float speed;
  private color c;
  
  
  Particle(float x, float y, float width, float height, float speed, color c) {
    this.x = x;
    this.y = y;
    this.w = width;
    this.h = height;
    this.speed = speed;
    this.c = c;
  }
  
   
   public void moveLeft(){
   // Issue to note: Resetting particle when it leaves the screen
    x -= speed;
    if (x + w < 0){
      x = width + random(50);
      y = random(50, 450);
      w = random(40, 90);
      h = random(40, 90);
    }
  }
   
   public void update(){moveLeft();}
   
 void display() {
    noStroke();
    fill(c);
    rect(x, y, w, h);
 }
   }
