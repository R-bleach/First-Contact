class Restart {
  PVector position;
  Restart() {
    position = new PVector(20, 20);
  }

  void Draw() {
    push();
    fill(255);
    rect(position.x,position.y,100,50);
    pop();
    push();
    fill(0);
    text("restart",position.x +50,position.y + 25);
    pop();
  }
}
