boolean instructions = false;
class Screen{
PVector position;
  Screen() {
      position = new PVector(displayWidth/2.5, displayHeight/ 1.15);
  }
  void DrawInst(){
    if (instructions == false)
    image(InstPanelClosed, 0, height/4);
    if (instructions == true){
    image(InstPanelOpen, 0, height/4);
    }
  }
}
