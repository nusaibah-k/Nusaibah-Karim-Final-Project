 class Obstacle{
  
  private double x;
  private double y;
  private int width;
  private int height;
  private double speed;
  
  public Obstacle(){
    x=0;
    y=0;
    width=10;
    height =10;
    speed=1;
  }
  
   public Obstacle(double x, double y, int width, int height) {
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
  
  int getWidth(){return width;}
  
  int getHeight(){return height;}
  
  public void moveLeft(){x -= speed;}
  
  public double getX(){return x;}
  
  public double getY(){return y;}
  
  public void setY(double num){y=num;}
  
  public void setX(double num){x=num;}
  
  public boolean collide(Player p){return p.getX() + p.getWidth() > x && p.getX() < x + width && p.getY() + p.getHeight() > y && p.getY() < y + height;}
 }
