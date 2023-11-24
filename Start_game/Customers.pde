class Customer {
  boolean passed = false;
  PVector position;
  float speed = 5f;
  float angle1, angle2;
  int age;
  boolean badFace = false;

  Customer(int pAge, boolean pBadFace ) {
    position = new PVector (0, displayHeight/2);
    age = pAge;
    badFace = pBadFace;
  }

  void update(boolean toRight) {
    {
      if (toRight) {
        position.x += width/400;
      } else{
        position.x -= width/400 ;
      }
    }
  }

  void Draw() {
    if (characterSelector == 1) {
      if (position.x == width/2)
      image(Cowgirl, position.x- Cowgirl.width/2 + 10 * sin(millis()/300.0f), Cowgirl.height/5);
      else image(Cowgirl, position.x- Cowgirl.width/2, Cowgirl.height/5);
    }
    if (characterSelector == 2) {
      if (position.x == width/2)
      image(Frog, position.x- Frog.width/2 + 10 * sin(millis()/300.0f), Frog.height/8);
      else image(Frog, position.x- Frog.width/2, Frog.height/8);
    }
    if (characterSelector == 3) {
      if (position.x == width/2)
      image(Snake, position.x- Snake.width/2 + 10 * sin(millis()/300.0f), Snake.height/50);
      else image(Snake, position.x- Snake.width/2, Snake.height/50);
    }
    if (characterSelector == 4) {
      if (position.x == width/2)
      image(Spider, position.x- Spider.width/2 + 10 * sin(millis()/300.0f), Spider.height/6);
      else image(Spider, position.x- Spider.width/2, Spider.height/6);
    }
  }
}
