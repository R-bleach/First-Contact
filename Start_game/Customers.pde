class Customer {
  boolean passed = false;
  PVector position;
  float speed = 5f;
  int age;
  boolean badFace = false;
  //int characterSelector;
  PImage Cowgirl;
  PImage Frog;
  PImage Snake;
  PImage Spider;

  Customer(int pAge, boolean pBadFace ) {
    characterSelector = (int)random(1, 5);
    position = new PVector (0, 500);
    age = pAge;
    badFace = pBadFace;

    Cowgirl = loadImage("cowgirl.png");
    Frog = loadImage("FROG.png");
    Snake = loadImage("snake_dude.png");
    Spider = loadImage("spiderlady.png");
  }

  void update(boolean toRight) {
    if (toRight)
      position.x += 5;
    else
      position.x -= 5;
  }

  void Draw() {
    if (characterSelector == 1) {
      image(Cowgirl, position.x- Cowgirl.width/2, height/2,width/7, height/2.10);
    }
    if (characterSelector == 2) {
      image(Frog, position.x- Frog.width/2, height/2,width/5, height/1.90);
    }
    if (characterSelector == 3) {
      image(Snake, position.x- Snake.width/2, height/2.5,width/5, height/1.5);
    }
    if (characterSelector == 4) {
      image(Spider, position.x- Spider.width/2, height/3,width/2, height/1.5);
    }
  }
}
