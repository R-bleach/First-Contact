class IdCard {
  float widthCard = 150f;
  float heightCard = (widthCard /1.75);
  float widthCardCheck = 400f;
  float heightCardCheck = (widthCardCheck /2);
  PVector position;
  PVector positionChecking;
  boolean checkingId = false;
  boolean idDrawing = false;
  IdCard() {
    if (checkingId == false) {
      position = new PVector(width-(widthCard+30), height/ 5);
    }
  }

  void Draw() {
    if (checkingId == false) {
      push();
      stroke(0);
      fill(255);
      rect(position.x, position.y, widthCard, heightCard);
      pop();
    }
    {
      if (checkingId == true) {
        positionChecking = new PVector(width/2-(widthCardCheck/2), height/ 1.5);

        push();
        stroke(0);
        fill(255);
        rect(positionChecking.x, positionChecking.y, widthCardCheck, heightCardCheck);
        square(positionChecking.x + 300, positionChecking.y + 20, widthCardCheck/5);
        pop();

        push();
        fill(0);
        textSize(20);
        text("age: " + ageNumber, positionChecking.x +20, positionChecking.y + 40);
        pop();
        Face();
      }
    }
  }
  void Face() {
    if (badFace) {
      push();
      fill(255, 0, 0);
      square(positionChecking.x + 310, positionChecking.y + 30, 50);
      pop();
    } else {
      fill(0);
      square(positionChecking.x + 310, positionChecking.y + 30, 50);
    }
  }
}
