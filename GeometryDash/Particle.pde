class Particle{

  private float x;
  private float y;
  private float width;
  private float height;
  private float speed;
  private color c;
  
  
  public Particle(){
    x=0;
    y=0;
    width=10;
    height =10;
    speed=1;
  }
  
   double getX(){return x;}
    
   double getY(){return y;}
    
   int getWidth(){return width;}
    
   int getHeight(){return height;}
   
   public void moveLeft(){x -= speed;}
   
   public void update(){moveLeft();}
   
   public void setY(double num){y=num;}
  
   public void setX(double num){x=num;}
   
   void display(){
     fill(0, 255, 255);
     stroke(255);
     rect((float)x, (float)y, width, height);
   }
 

}
