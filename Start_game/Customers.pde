class Customer {
  boolean passed = false;
  PVector position;
  float speed = 5f;
  float angle1, angle2;
  int age;
  boolean badFace = false;

  Customer() {
    if(reset && charSel == 1)
      position = new PVector(50, displayHeight/2);
    else position = new PVector (0, displayHeight/2);
  }

  void update(boolean toRight) {
    {
      if (toRight) {
        position.x += width/300;
      } else {
        position.x -= width/300 ;
      }
    }
  }

  void DrawChar() {
    if (charSel == 1) {
      if (position.x == width/2)
        image(Alien, position.x- Alien.width/2 + 10 * sin(millis()/300.0f), displayHeight/5);
      else image(Alien, position.x- Alien.width/2, displayHeight/5);
    }
    if (charSel == 2) {
      if (position.x == width/2)
        image(Snake, position.x- Snake.width/2 + 10 * sin(millis()/300.0f), displayHeight/50);
      else image(Snake, position.x- Snake.width/2, displayHeight/50);
    }
    if (charSel == 3) {
      if (position.x == width/2)
        image(Goblin, position.x- Goblin.width/2 + 10 * sin(millis()/300.0f), displayHeight/3);
      else image(Goblin, position.x- Goblin.width/2, displayHeight/3);
    }
    if (charSel == 5) {
      if (position.x == width/2)
        image(Fish, position.x- Fish.width/2 + 10 * sin(millis()/300.0f), displayHeight/3);
      else image(Fish, position.x- Fish.width/2, displayHeight/3);
    }
    if (charSel == 6) {
      if (position.x == width/2)
        image(Frog, position.x- Frog.width/2 + 10 * sin(millis()/300.0f), displayHeight/3);
      else image(Frog, position.x- Frog.width/2, displayHeight/3);
    }
    if (charSel == 7) {
      if (position.x == width/2)
        image(Cowgirl, position.x- Cowgirl.width/2 + 10 * sin(millis()/300.0f), displayHeight/4);
      else image(Cowgirl, position.x- Cowgirl.width/2, displayHeight/4);
    }
    if (charSel == 8) {
      if (position.x == width/2)
        image(Celestial, position.x- Celestial.width/2 + 10 * sin(millis()/300.0f), displayHeight/5);
      else image(Celestial, position.x- Celestial.width/2, displayHeight/5);
    }
    if (charSel == 9) {
      if (position.x == width/2)
        image(Fly, position.x- Fly.width/2 + 10 * sin(millis()/300.0f), displayHeight/3);
      else image(Fly, position.x- Fly.width/2, displayHeight/3);
    }
    if (charSel == 10) {
      if (position.x == width/2)
        image(Spider, position.x- Spider.width/2 + 10 * sin(millis()/300.0f), displayHeight/6);
      else image(Spider, position.x- Spider.width/2, displayHeight/6);
    }
    if (charSel == 11) {
      if (position.x == width/2)
        image(Chonker, position.x- Chonker.width/2 + 10 * sin(millis()/300.0f), displayHeight/6);
      else image(Chonker, position.x- Chonker.width/2, displayHeight/6);
    }
  }
}

void spawnGuy() {
  if (charSel == 0 || charSel == 4) screen.instructions = true;
  if ( goodGuys.size() < 1 && screen.instructions == false) {
    goodGuys.add(new Customer());
  }
}
