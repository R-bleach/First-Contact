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
    position = new PVector (0, displayWidth);
    age = pAge;
    badFace = pBadFace;

    Cowgirl = loadImage("cowgirl.png");
    Frog = loadImage("FROG.png");
    Snake = loadImage("snake_dude.png");
    Spider = loadImage("spiderlady.png");
  }

  void update(boolean toRight) {
  if(characterSelector == 4){
    if (toRight)
      position.x += width/500;
    else
      position.x -= width/500;
  }
  else{
    if (toRight)
      position.x += width/750;
    else
      position.x -= width/750;
  }
  
  }

  void Draw() {
    if (characterSelector == 1) {
      int width = Cowgirl.width*2;
      image(Cowgirl, position.x- Cowgirl.width/1.5, height/2,width, height/2.10);
    }
    if (characterSelector == 2) {
      int width = Frog.width*2;
      image(Frog, position.x- Frog.width/1.5, height/2,width, height/1.90);
    }
    if (characterSelector == 3) {
      int width = Snake.width*2;
      image(Snake, position.x- Snake.width/1.5, height/2.5,width, height/1.5);
    }
    if (characterSelector == 4) {
      int width = Spider.width*2;
      image(Spider, position.x- width/1.5, height/3,width, height/1.5);
    }
  }
}
