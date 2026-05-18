class GeoDash{
  
  float x;
  float y;
  float xVel;
  float yVel;
  PVector location= new PVector(x,y);
  PVector velocity= new PVector(xVel, yVel);
  color c;
  PVector acceleration= new PVector(x,y);
  PVector gravity = new PVector(0, 0.9);
  PVector wind= new PVector(0.1,0);

  Player(float x, float y, float xVel, float yVel){  
    location = new PVector(x, y);
    velocity = new PVector(xVel, yVel);
    acceleration = new PVector(0, 0); 
    c = color(random(255), random(255), random(255));}
    
  void display(){
    stroke(0);
    fill(c);
   triangle(120, 300, 232, 80, 344, 300);
   stroke(255);}
   
   
}
