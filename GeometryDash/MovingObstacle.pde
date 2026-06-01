 class MovingObstacle extends Obstacle{
  
  private boolean vertical;
  private double moveSpeed;
  private int direction;
  
public MovingObstacle(double x, double y, int width, int height) {
  super(x,500,(int)random(10, 20), 25);
  moveSpeed = random(0.5, 1.5);
  direction = 1;
  vertical = random(1) < 0.5;
}
   
   public void update(){
    super.update();
    movePattern();}

public void display() {
fill(255, 0, 255);
rect((float)getX(), (float)getY(), getWidth(), getHeight());
}
  
void movePattern() {
  if (vertical) {
    // move up and down
    setY(getY() + moveSpeed * direction);
    if (getY() >= 500) {direction = -1;
    }
    if (getY() <= 450) {direction = 1;}} 
    else {setX(getX() + moveSpeed * direction);
    if (getX() >= 1150) {direction = -1;}
    if (getX() <= 1050) {direction = 1;}}
}

 }
