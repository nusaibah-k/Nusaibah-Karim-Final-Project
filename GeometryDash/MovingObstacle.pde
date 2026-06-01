 class MovingObstacle extends Obstacle{
  
  private double moveSpeed;
  private int direction;
  
public MovingObstacle(double x, double y, int width, int height) {
  super(
    x,
    y,
    (int)random(60,120),
    (int)random(80, 140)
  );

moveSpeed = random(2, 5);  
direction = 1;
}
   
   public void update(){
    super.update();
    movePattern();}

  public void display(){
    fill(180, 0, 255);
    rect((float)getX(), (float)getY(), getWidth(), getHeight());}
  
  void movePattern(){
    setY(getY() + moveSpeed * direction);
    if (getY() >= 500) {direction = -1;}
    if (getY() <= 430) {direction = 1;}
    }
}
