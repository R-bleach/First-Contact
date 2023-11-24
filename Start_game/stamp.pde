class Stamp {
  boolean decisionMade = false;
  boolean approved;
  PVector position;
  PVector position2;
  Stamp()
  {
    position = new PVector(displayWidth/1.45, displayHeight / 1.2);
    position2 = new PVector(displayWidth/1.52, displayHeight / 1.37);
  }
  void Draw() {
    fill(0);
    if (decisionMade) {
      if (approved) image(GreenButton,0,0);
      else if (!approved) image(RedButton,0,0);
    }
    //rect(position.x, position.y, displayWidth/15, displayWidth/20);
    //rect(position2.x, position2.y, displayWidth/15, displayWidth/20);
  }
}
