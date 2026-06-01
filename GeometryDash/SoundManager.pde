import processing.sound.*;

class SoundManager {

  private SoundFile music;
  private SoundFile loseSound;
  private SoundFile winSound;

  SoundManager(PApplet app) {
    music = new SoundFile(app, "background.mp3");
    loseSound = new SoundFile(app, "lose.mp3");
    winSound = new SoundFile(app, "win.mp3");
  }
  
  
  void playMusic(){if (!music.isPlaying()) {music.loop();}}

  void playLose() {loseSound.play();}

  void playWin() {winSound.play();}
  
  void stopMusic() {music.stop();}
}
