public class Spike extends Obstacle{
  
  private double x;
  private double y;
  private int width;
  private int height;
  private double speed;
  
  
 private int damage;
 
public void display(){}

public boolean collide(Player p){}

   public Spike(double x, double y, int width, int height) {
     this.x = x;
     this.y = y;
     this.width = width;
     this.height = height;
     speed = 6;
    }
    
 
}
