void drawScan() { 
  
  image(scanBackground, 0, 0);
  image(leverScanScene, 0, 0);
  scanned.Draw();
  
}
class Scanned {
  PVector position;

  void Draw() {
    if(charSel == 5){
      position = new PVector(displayWidth/1.14, displayHeight/1.56);
      image(Fish,displayWidth/4.5,displayHeight/2.5,Fish.width/1.5,Fish.height/1.5);
      image(leverScanScene, 0, 0);
      image(ScanFish, 0, 0);
      if (OnScanHover())
        image(ScanFish2, 0, 0);
      square(position.x, position.y,50);
    }
    if(charSel == 6){
      position = new PVector(displayWidth/1.24, displayHeight/2.5);
      image(Frog,displayWidth/4.5,displayHeight/2.5,Frog.width/1.5,Frog.height/1.5);
      image(leverScanScene, 0, 0);
      image(ScanFrog, 0, 0);
    }
    if (charSel == 7) {
      position = new PVector(displayWidth/1.24, displayHeight/2.5);
      image(Cowgirl,displayWidth/4.5,displayHeight/3,Cowgirl.width/1.5,Cowgirl.height/1.5);
      image(leverScanScene, 0, 0);
      image(ScanCowgirl1, 0, 0);
      if (OnScanHover())
        image(ScanCowgirl2, 0, 0);
      square(position.x, position.y,50);
    }
    if(charSel == 8){
      position = new PVector(displayWidth/1.11, displayHeight/1.725);
      image(Celestial,displayWidth/5,displayHeight/4.5,Celestial.width/1.5,Celestial.height/1.5);
      image(leverScanScene, 0, 0);
      image(ScanCelestial, 0, 0);
      if (OnScanHover())
        image(ScanCelestial2, 0, 0);
      square(position.x, position.y,50);
    }
    if(charSel == 9){
      position = new PVector(displayWidth/1.148, displayHeight/1.275);
      image(Fly,displayWidth/5,displayHeight/2.5,Fly.width/1.5,Fly.height/1.5);
      image(leverScanScene, 0, 0);
      image(ScanFly, 0, 0);
      if (OnScanHover())
        image(ScanFly2, 0, 0);
      square(position.x, position.y,50);
    }
    if(charSel == 10){
      position = new PVector(displayWidth/1.09, displayHeight/1.8);
      image(Spider,displayWidth/15,displayHeight/6,Spider.width/1.5,Spider.height/1.5);
      image(leverScanScene, 0, 0);
      image(ScanSpider, 0, 0);
      if (OnScanHover())
        image(ScanSpider2, 0, 0);
      square(position.x, position.y,50);
    }
    if(charSel == 11){
      position = new PVector(displayWidth/1.07, displayHeight/2);
      image(Chonker,displayWidth/5,displayHeight/5,Chonker.width/1.2,Chonker.height/1.2);
      image(leverScanScene, 0, 0);
      image(ScanChonker, 0, 0);
      if (OnKnifeHover())
        image(ScanChonker2, 0, 0);
      rect(position.x, position.y,displayWidth/35,displayWidth/20);
    }
  }
}

boolean OnScanHover() {
  if ((scanned.position.y <= player.position.y &&
    scanned.position.y + displayWidth/40 >= player.position.y &&
    scanned.position.x <= player.position.x &&
    scanned.position.x + displayWidth/40 >= player.position.x) && (id.checkingId == false))
  {
    return true;
  } else return false;
}

boolean OnKnifeHover() {
  if ((scanned.position.y <= player.position.y &&
    scanned.position.y + displayWidth/20 >= player.position.y &&
    scanned.position.x <= player.position.x &&
    scanned.position.x + displayWidth/35 >= player.position.x) && (id.checkingId == false))
  {
    return true;
  } else return false;
}
