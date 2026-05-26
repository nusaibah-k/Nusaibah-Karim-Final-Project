 class MovingObstacle extends Obstacle{
  
  private double x;
  private double y;
  private int width;
  private int height;
  private double speed;
 
  
   public MovingObstacle(double x, double y, int width, int height) {
     this.x = x;
     this.y = y;
     this.width = width;
     this.height = height;
     speed = 6;
    }
    
  public void update(){moveLeft();}
  
  public void display(){
    fill(255, 0, 0);
    rect((float)x, (float)y, width, height);}
  
  void movePattern() {
    if (direction == 1){y += moveSpeed;}
    else {y -= moveSpeed;}
    if (y >= 500){direction = -1;}
    if (y <= 350){direction = 1;}
    }
    
  public void moveLeft(){x -= speed;}
  
  public double getX(){return x;}
  
  public double getY(){return y;}
  
  public boolean collide(Player p){
  return p.getX() + p.getWidth() > x && p.getX() < x + width && 
    p.getY() + p.getHeight() > y && 
    p.getY() < y + height;
  
}

  

}
