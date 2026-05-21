class Player{

  // Position
    private double x;
    private double y;

    // Size
    private int width;
    private int height;

    // Physics
    private double velocityY;
    private double gravity;
    private double jumpForce;

    // State
    private boolean isGrounded;
    private double rotation;
    private boolean alive;
    
     public Player(double x, double y) {
        this.x = x;
        this.y = y;
        width = 50;
        height = 50;
        velocityY = 0;
        gravity = 0.8;
        jumpForce = -14;
        isGrounded = true;
        rotation = 0;
        alive = true;
    }
    
    // problem: finding good initial values for player constructor
    
    void jump(){
     if (isGrounded && alive) {
      velocityY = jumpForce;
      isGrounded = false;}
    }
    
    void applyGravity(){velocityY += gravity;}
    
    void update(){
     y += velocityY;
     if (!isGrounded) {rotation += 0.1;}
    }
    
    void display(){
      fill(0, 255, 255);
      stroke(255);
      rect((float)x,
         (float)y,
         width,
         height);
         fill(255);
         ellipse((float)x + 15, (float)y + 15, 8,8);
         ellipse((float)x + 35,
            (float)y + 15,8,8);}
    
   /* boolean collide (Obstacle o){
      return x + width > o.getX() &&
       x < o.getX() + o.getWidth() &&
       y + height > o.getY() &&
       y < o.getY() + o.getHeight();
 } 
    */
    
    void die(){alive = false;}
    
    void reset(){
       x = 150;
       y = 500;
       velocityY = 0;
       rotation = 0;
       alive = true;
       isGrounded = true;
    }
}
