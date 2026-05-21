Player player;

void setup() {
  size(1200, 700);
  player = new Player(150, 500);
}

void draw() {
  background(30);
  fill(70);
  rect(0, 550, width, 150);
   player.applyGravity();
   player.update();
   player.display();
}

void keyPressed() {
   if (key == ' ' || keyCode == UP) {player.jump();}
}
