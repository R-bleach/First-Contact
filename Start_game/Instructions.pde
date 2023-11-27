boolean instructions = false;
class Screen {
  void DrawInstructions() {
    if (instructions == false)
      image(InstPanelClosed, 0, height/5);
    if (instructions == true) {
      image(InstPanelOpen, 0, height/5);
    }
  }
}
