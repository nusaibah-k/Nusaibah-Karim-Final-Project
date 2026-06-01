import processing.sound.*;

class SoundManager {

  private SoundFile music;
  private SoundFile loseSound;
  private SoundFile winSound;

  SoundManager(PApplet app) {
    music = new SoundFile(app, "music.mp3");
    loseSound = new SoundFile(app, "lose.mp3");
    winSound = new SoundFile(app, "win.mp3");
  }

}
