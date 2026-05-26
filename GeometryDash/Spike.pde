public class Spike extends Obstacle{
 
   public Spike(double x, double y, int width, int height) {
     super(x, y, width, height);
    }
    
  
  public void display(){
  fill(255, 0, 0);
  triangle((float)getX(),
  (float)(getY() + getHeight()),
  (float)(getX() + getWidth() / 2),
  (float)getY(), (float)(getX() + getWidth()), (float)(getY() + getHeight()));
  }
  
  
  public boolean collide(Player p){
   return p.getX() + p.getWidth() > getX() &&
               p.getX() < getX() + getWidth() &&
               p.getY() + p.getHeight() > getY() &&
               p.getY() < getY() + getHeight();}}
