class Particle{

  private float x;
  private float y;
  private float width;
  private float height;
  private float speed;
  private color c;
  
  
  Particle(float x, float y, float width, float height, float speed, color c) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.speed = speed;
    this.c = c;
  }
  
   
   public void moveLeft(){
   x -= speed;
   // Issue to note: Resetting particle when it leaves the screen
    if (x + width < 0) {x = width;}
  }
   
   public void update(){moveLeft();}
   
 void display() {
    noStroke();
    fill(c);
    rect(x, y, width, height);
 }
   }
