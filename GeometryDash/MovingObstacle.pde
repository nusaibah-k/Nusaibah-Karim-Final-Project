 class MovingObstacle extends Obstacle{
  
  private double moveSpeed;
  private int direction;
  
   public MovingObstacle(double x, double y, int width, int height) {
    super(x, y, width, height);
        moveSpeed = 3;
        direction = 1;
    }
   
   void update() {
     moveLeft();
     movePattern();
    }

  
  public void display(){
    fill(255, 150, 0);
    rect((float)getX(), (float)getY(), getWidth(), getHeight());}
  
  void movePattern() {
    setY(getY() + moveSpeed * direction);
    if (getY() >= 500) {direction = -1;}
    if (getY() <= 350) {direction = 1;}
    }
   
}
