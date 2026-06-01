import java.util.ArrayList;
import processing.sound.*;

Player player;
ArrayList<Obstacle> obstacles;
ArrayList<Particle> particles;
Counter counter;
Button restartButton;
SoundManager soundManager;
boolean winPlayed = false;
boolean losePlayed = false;
int nextSpawn;

void setup() {
size(1200, 700);
nextSpawn = (int)random(60, 180);
player = new Player(150, 500);
obstacles = new ArrayList<Obstacle>();
particles = new ArrayList<Particle>();
counter = new Counter(10);
restartButton = new Button(500, 350, 200, 60, "RESTART");
soundManager = new SoundManager(this);
soundManager.playMusic();

 for (int i = 0; i < 10; i++) {
    particles.add(
      new Particle(
        random(width),
        random(100, 450),
        random(40, 90),
        random(40, 90),
        random(1, 3),
        color(120, 0, 255, 80)));
  }

  for (int i = 0; i < 5; i++) {
    particles.add(
      new Particle(
        random(width),
        random(50, 250),
        random(60, 120),
        random(60, 120),
        random(0.5, 2),
        color(0, 255, 255, 60)));}
}

void draw() {
  
if (counter.reachedGoal()) {
  if (!winPlayed){
      soundManager.stopMusic();
      soundManager.playWin();
      winPlayed = true;}
    drawWinScreen();
    return;}

if (!player.isAlive()) {
    if (!losePlayed) {
    soundManager.stopMusic();
    soundManager.playLose();
    losePlayed = true;}

  background(30, 0, 60);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("GAME OVER", width/2, 250);
  restartButton.display();
  return;
}

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

if (frameCount >nextSpawn) {
int obstacleType = (int)random(2);
if (obstacleType == 0) {obstacles.add(new Spike(1200, 500, 50, 50));} 
else {obstacles.add(new MovingObstacle(1200, 400, 50, 50));}
  nextSpawn = frameCount + (int)random(60, 180);}

for (int i = 0; i < obstacles.size(); i++) {
  Obstacle o = obstacles.get(i);
  o.update();
  o.display();
  // Collision
  if (o.collide(player)) {
    player.die();
  }
  // Obstacle passed off screen
  if (o.getX() + o.getWidth() < 0) {
    counter.addPoint();
    obstacles.remove(i);
    i--;}}
counter.display();
}

void drawWinScreen() {

  background(20, 0, 40);

  // Neon grid
  stroke(100, 0, 255, 80);

  for (int x = 0; x < width; x += 50) {line(x, 0, x, height);}

  for (int y = 0; y < height; y += 50) {line(0, y, width, y);}

  // Moving glowing blocks
  noStroke();
  fill(0, 255, 255, 120);

  for (int i = 0; i < 10; i++) {
    float x = (frameCount * 2 + i * 120) % width;
    rect(x, 150 + i * 20, 40, 40);}

  // Ground
  fill(80);
  rect(0, 550, width, 150);

  // Win text
  textAlign(CENTER, CENTER);
  fill(255, 255, 0);
  textSize(70);
  text("YOU WIN!", width/2, 250);

  fill(255);
  textSize(30);
  text("Thanks for playing", width/2, 340);
}


void restartGame() {
  player = new Player(150, 500);
  obstacles.clear();
  counter = new Counter(10);
  nextSpawn = frameCount + (int)random(60, 180);
  winPlayed = false;
  losePlayed = false;
  soundManager.playMusic();}


void keyPressed() {
  if (player.isAlive() &&
      (key == ' ' || keyCode == UP)) {player.jump();}
}

void mousePressed() {
  if (!player.isAlive() &&
      restartButton.isClicked()) {
        restartGame();
  }
}
