public class Player{

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
    
    void jump{
     if (isGrounded && alive) {
      velocityY = jumpForce;
      isGrounded = false;}
    }
    
    void applyGravity{velocityY += gravity;}
    
    void update{
    
    }
    
    void display{
    
    }
    
    boolean collide (Obstacle o){
    
    }
    
    void die{
    
    }
    
    void reset{
    
    }
    
}
