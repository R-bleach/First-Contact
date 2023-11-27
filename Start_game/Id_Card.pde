class IdCard {
  float widthCard = displayWidth/10;
  float heightCard = (widthCard /1.75);
  float widthCardCheck = displayWidth/4;
  float heightCardCheck = (widthCardCheck /2);
  PVector position;
  PVector positionChecking;
  boolean checkingId = false;
  boolean idDrawing = false;

  IdCard() {
    if (checkingId == false) {
      position = new PVector(displayWidth/2.5, displayHeight/ 1.15);
    }
  }

  void DrawID() {
    if (checkingId == false) {
    }
    {
      if (checkingId == true) {
        positionChecking = new PVector(width/2-(widthCardCheck/2), height/ 2.2);
        image(IdButton, 0, 0);
        if (charSel == 1)
          image(IdAlien, 0, 0);
        if (charSel == 2)
          image(IdSnake, 0, 0);
        if (charSel == 3)
          image(IdGoblin, 0, 0);
        if (charSel == 5)
          image(IdFish, 0, 0);
        if (charSel == 6)
          image(IdFrog, 0, 0);
        if (charSel == 7)
          image(IdCowgirl, 0, 0);
        if (charSel == 8)
          image(IdCelestial, 0, 0);
        if (charSel == 9)
          image(IdFly, 0, 0);
        if (charSel == 10)
          image(IdSpider, 0, 0);
        if (charSel == 11)
          image(IdChonker, 0, 0);
      }
    }
  }
  void CheckID() {
    id.idDrawing = true;
    if (OnIdHover() && id.checkingId == false) {

      if (mouseDownId) {
        id.checkingId = true;
        mouseDownId = false;
      }
    }
    if (isCheckingId && id.checkingId) {

      if (mouseDownId) {
        id.checkingId = false;
        mouseDownId = false;
      }
    }
  }
}
