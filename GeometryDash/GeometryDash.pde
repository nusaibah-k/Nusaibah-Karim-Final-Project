import java.util.ArrayList;

Player player;
ArrayList<Obstacle> obstacles;

ArrayList<Particle> particles;

for (int i = 0; i < 12; i++) {particles.add( new Particle(random(width), random(100, 450), random(40, 100), random(40, 100), random(1, 3), color(120, 0, 255, 80)));

void setup() {
  size(1200, 700);
  player = new Player(150, 500);
  obstacles = new ArrayList<Obstacle>();}

void draw() {

background(30);

  // Ground
  fill(70);
  rect(0, 550, width, 150);
  // Player
  player.applyGravity();
  player.update();

  player.display();

// Spawn obstacle every 2 seconds
// MAKE SLOWER
if (frameCount % 120 == 0) {obstacles.add(new Spike(1200, 500, 50, 50));}

// Obstacles
  for (int i = 0; i < obstacles.size(); i++){
    Obstacle o = obstacles.get(i);
    o.update();
    o.display();

  // Collision
if (player.collide(o)){player.die();}}
if (!player.isAlive()) {
  fill(255);
  textSize(50);
  text("GAME OVER", 400, 300);
  noLoop();
}
}

void keyPressed(){
  if (key == ' ' || keyCode == UP){
    player.jump();}
}
