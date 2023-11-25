void reset() {
  stamp.approved = false;
  stamp.decisionMade = false;
  mouseDownGreen = false;
  mouseDownRed = false;
  id.idDrawing = false;
  id.checkingId = false;
}

void mousePressed() {
  if (mouseButton == LEFT) {
    if (OnGreenHover() && id.checkingId == false) {
      mouseDownGreen = true;
    }
    if (id.checkingId == false && OnIdHover() || id.checkingId && isCheckingId) {
      mouseDownId = true;
    }
  }

  if (mouseButton == LEFT) {
    if (OnRedHover())
      mouseDownRed = true;
  }
}


boolean OnGreenHover() {
  if (
    stamp.position.y <= player.position.y &&
    stamp.position.y + displayWidth/20 >= player.position.y&&
    stamp.position.x <= player.position.x&&
    stamp.position.x + displayWidth/15>= player.position.x)
  {
    return true;
  } else return false;
}

boolean OnRedHover() {
  if (
    stamp.position2.y <= player.position.y &&
    stamp.position2.y + displayWidth/20 >= player.position.y&&
    stamp.position2.x <= player.position.x&&
    stamp.position2.x + displayWidth/15>= player.position.x)
  {
    return true;
  } else return false;
}

boolean OnIdHover() {
  if ((id.position.y <= player.position.y &&
    id.position.y + displayHeight/9 >= player.position.y&&
    id.position.x <= player.position.x&&
    id.position.x + displayWidth/5>= player.position.x)&&(id.checkingId == false))
  {
    return true;
  } else return false;
}
void CheckingIdHover() {
  if (id.checkingId) {
    if ((id.position.y <= player.position.y &&
      id.position.y + displayWidth/9 >= player.position.y&&
      id.position.x <= player.position.x&&
      id.position.x + displayWidth/5>= player.position.x))
    {
      isCheckingId = true;
    } else isCheckingId = false;
  }
}

void drawAll() {
  
  if( isCheckingScan ){
    drawScan();
  }
  
  for (Customer goodGuy : goodGuys) {
    goodGuy.Draw();
  }
  for (Customer badGuy : badGuys) {
    badGuy.Draw();
  }
  image(Desk, 0, 0);
  image(InstPanelClosed, 0, height/4);
  stamp.Draw();
  if (id.idDrawing)
    id.Draw();
  player.Draw();
}

void drawScan(){
  
  image(scanBackground, 0, 0);
  print("we scanning");
}

//void keyReleased(){
//  if(key == 32);
//  characterSelector = (int)random(1, 5);
//}
