void drawScan() { 
  
  image(scanBackground, 0, 0);
  image(leverScanScene, 0, 0);
  scanned.Draw();
  
}
class Scanned {
  PVector position;

  void Draw() {
    if(charSel == 5){
      image(Fish,displayWidth/4.5,displayHeight/4.5,Fish.width/1.5,Fish.height/1.5);
      image(leverScanScene, 0, 0);
    }
    if(charSel == 6){
      image(Frog,displayWidth/4.5,displayHeight/4.5,Frog.width/1.5,Frog.height/1.5);
      image(leverScanScene, 0, 0);
    }
    if (charSel == 7) {
      position = new PVector(displayWidth/1.1, displayHeight/2);
      image(Cowgirl,displayWidth/4.5,displayHeight/3,Cowgirl.width/1.5,Cowgirl.height/1.5);
      image(leverScanScene, 0, 0);
      image(ScanCowgirl1, 0, 0);
      if (OnScanHover())
        image(ScanCowgirl2, 0, 0);
      square(position.x, position.y, 50);
    }
    if(charSel == 8){
      image(Celestial,displayWidth/4.5,displayHeight/4.5,Celestial.width/1.5,Celestial.height/1.5);
      image(leverScanScene, 0, 0);
    }
    if(charSel == 9){
      image(Fly,displayWidth/4.5,displayHeight/4.5,Fly.width/1.5,Fly.height/1.5);
      image(leverScanScene, 0, 0);
    }
    if(charSel == 10){
      image(Spider,displayWidth/4.5,displayHeight/4.5,Spider.width/1.5,Spider.height/1.5);
      image(leverScanScene, 0, 0);
    }
    if(charSel == 11){
      image(Chonker,displayWidth/4.5,displayHeight/4.5,Chonker.width/1.2,Chonker.height/1.2);
      image(leverScanScene, 0, 0);
    }
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
