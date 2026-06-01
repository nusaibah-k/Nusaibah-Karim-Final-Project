class Counter {

  private int score;
  private int goal;

  Counter(int goal) 
  {score = 0;
  this.goal = goal;}

  void addPoint(){score++;}

  int getScore(){return score;}

  boolean reachedGoal() {return score >= goal;}

  void display() {
    fill(255);
    textSize(30);
    textAlign(LEFT);
    text("Score: " + score + "/" + goal, 20, 40);}

  void reset() {score = 0;}
}
