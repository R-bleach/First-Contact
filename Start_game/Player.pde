class Player {
  PVector position;
  Player()
  {
    position = new PVector(width/2, height -15);
  }
  void update() {
    position.x = mouseX;
    position.y = mouseY;
  }

  void Draw() {
    fill(0);
    circle(position.x, position.y, 10);
  }
}
