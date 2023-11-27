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
      if (charSel == 1)
        fill(0, 255, 0);
      rect(displayWidth/4, displayWidth/8, displayWidth/2, displayHeight/2);
      if (charSel == 4)
        fill(0, 150, 0);
      rect(displayWidth/4, displayWidth/8, displayWidth/2, displayHeight/2);
    }
  }
  void CheckInst() {
    if (isOnScreen && instructions == true) {

      if (mouseDownScreen) {
        instructions = false;
        mouseDownScreen = false;
      }
    }
  }
}
