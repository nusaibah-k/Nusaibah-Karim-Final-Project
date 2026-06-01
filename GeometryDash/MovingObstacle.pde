 class MovingObstacle extends Obstacle{
  
  private double moveSpeed;
  private int direction;
  
public MovingObstacle(double x, double y, int width, int height) {
  super(
    x,
    y,
    (int)random(120, 250),
    (int)random(30, 60)
  );

  moveSpeed = 1;
  direction = 1;
}
   
   public void update(){
    super.update();
    movePattern();}

  public void display(){
    fill(0, 100, 0); // dark green
    rect((float)getX(), (float)getY(), getWidth(), getHeight());}
  
  void movePattern(){
    setY(getY() + moveSpeed * direction);
    if (getY() >= 500) {direction = -1;}
    if (getY() <= 350) {direction = 1;}
    }
}
