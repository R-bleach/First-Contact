class Screen {
  PVector positionClosed;
  boolean instructions = false;
  PVector position;
  Screen() {
    position = new PVector(0, displayHeight/ 3);
  }
  void DrawInstructions() {
    if (instructions == false)
      positionClosed = new PVector(0, displayHeight/ 5);
    image(InstPanelClosed, 0, height/5);
    if (instructions == true) {
      screen.position = new PVector(0, displayHeight/ 3);
      image(InstPanelOpen, 0, height/5);
      if (charSel == 0)
      image(Instructions1,displayWidth/4,displayHeight/4);
      if (charSel == 4)
      image(Instructions2,displayWidth/4,displayHeight/4);
    }
  }
  void CheckInst() {
    if (isOnScreen && instructions == true && !isCheckingScan) {

      if (mouseDownScreen) {
        instructions = false;
        mouseDownScreen = false;
      }
    }
  }
}
