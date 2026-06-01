class Spike extends Obstacle{
 
   public Spike(double x, double y, int width, int height) {
     super(x, y, width, height);}
     
  public void display(){
  fill(255, 0, 0);
  triangle((float)getX(),
  (float)(getY() + getHeight()),
  (float)(getX() + getWidth() / 2),
  (float)getY(), (float)(getX() + getWidth()), (float)(getY() + getHeight()));
  }
  
  public boolean collide(Player p) {

  double hitboxX = getX() + 10;
  double hitboxY = getY() + 5;
  double hitboxWidth = getWidth() - 20;
  double hitboxHeight = getHeight() - 5;

  return p.getX() + p.getWidth() > hitboxX
      && p.getX() < hitboxX + hitboxWidth
      && p.getY() + p.getHeight() > hitboxY
      && p.getY() < hitboxY + hitboxHeight;
}
  
}
