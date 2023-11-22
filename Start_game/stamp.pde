class Stamp {
  boolean decisionMade = false;
  boolean approved;
  PVector position;
  Stamp()
  {
    position = new PVector(width/2 - 50, height / 1.25);
  }
  void Draw() {
    fill(0);
    if (decisionMade) {
      if (approved) fill(0, 255, 0);
      else if (!approved) fill(255, 0, 0);
    }
    rect(position.x, position.y, 100, 50);
  }
}
