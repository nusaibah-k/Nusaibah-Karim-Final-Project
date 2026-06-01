import java.util.ArrayList;

Player player;
ArrayList<Obstacle> obstacles;

ArrayList<Particle> particles;

void setup() {
size(1200, 700);
player = new Player(150, 500);
obstacles = new ArrayList<Obstacle>();
particles = new ArrayList<Particle>();

 for (int i = 0; i < 10; i++) {
    particles.add(
      new Particle(
        random(width),
        random(100, 450),
        random(40, 90),
        random(40, 90),
        random(1, 3),
        color(120, 0, 255, 80)
      )
    );
  }

  for (int i = 0; i < 5; i++) {
    particles.add(
      new Particle(
        random(width),
        random(50, 250),
        random(60, 120),
        random(60, 120),
        random(0.5, 2),
        color(0, 255, 255, 60)
      )
    );
  }
}

void draw() {

// Geometry Dash style background
background(30, 0, 60);

// Background squares
for (Particle p : particles) {
  p.update();
  p.display();
}

// Dark play area
fill(50, 0, 100, 100);
rect(0, 0, width, 550);

  // Ground
  fill(70);
  rect(0, 550, width, 150);
  // Player
  player.applyGravity();
  player.update();

  player.display();

// Spawn obstacle every 2 seconds
// MAKE SLOWER
if (frameCount % 120 == 0) {
int obstacleType = (int)random(2);
if (obstacleType == 0) {obstacles.add(new Spike(1200, 500, 50, 50));} 
else {obstacles.add(new MovingObstacle(1200, 400, 50, 50));}

}

// Obstacles
  for (int i = 0; i < obstacles.size(); i++){
    Obstacle o = obstacles.get(i);
    o.update();
    o.display();

  // Collision
if (o.collide(player)){
  player.die();
}}

if (!player.isAlive()) {
  fill(255);
  textSize(50);
  text("GAME OVER", 400, 300);
  noLoop();
}}

void keyPressed(){
  if (key == ' ' || keyCode == UP){
    player.jump();}
}
