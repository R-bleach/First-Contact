class Scanned {
  PVector position;

  void Draw() {
    //if(charSel == 5){

    //}
    //if(charSel == 6){

    //}
    if (charSel == 7) {
      position = new PVector(displayWidth/1.1, displayWidth/2);
      image(ScanCowgirl1, 0, 0);
      if (OnScanHover())
        image(ScanCowgirl2, 0, 0);
      square(position.x, position.y, 50);
    }
    //if(charSel == 8){
    //}
    //if(charSel == 9){
    //}
    //if(charSel == 10){
    //}
    //if(charSel == 11){
    //}
  }
}


boolean OnScanHover() {
  if ((scanned.position.y <= player.position.y &&
    scanned.position.y + displayHeight/9 >= player.position.y &&
    scanned.position.x <= player.position.x &&
    scanned.position.x + displayWidth/5 >= player.position.x) && (id.checkingId == false))
  {
    return true;
  } else return false;
}
