Player player;

Obstacle spike;

MovingObstacle movingObstacle;

void setup() {

  size(1200, 700);

  player = new Player(150, 500);

  spike = new Spike(900, 500, 50, 50);

  movingObstacle = new MovingObstacle(700, 400, 60, 60);
}

void draw() {

  background(30);

  // Ground
  fill(70);

  rect(0, 550, width, 150);

  // Player
  player.applyGravity();

  player.update();

  player.display();

  // Spike
  spike.update();

  spike.display();

  // Moving obstacle
  movingObstacle.update();

  movingObstacle.display();

  // Collision checks
  if (player.collide(spike)) {

    player.reset();
  }

  if (player.collide(movingObstacle)) {

    player.reset();
  }
}

void keyPressed() {

  if (key == ' ' || keyCode == UP) {

    player.jump();
  }
}
