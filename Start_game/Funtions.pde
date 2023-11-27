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
    
    if ( OnIdHover() || id.checkingId && isCheckingId) {
      mouseDownId = true;
    }
    else if (OnGreenHover()) {
      mouseDownGreen = true;
    }
    else if (OnRedHover()){
      mouseDownRed = true;
    }
    else if (OnLeverHover()){
      isCheckingScan = true;
    }
    
  }
}


boolean OnGreenHover() {
  if (
    stamp.position.y <= player.position.y &&
    stamp.position.y + displayWidth/20 >= player.position.y &&
    stamp.position.x <= player.position.x &&
    stamp.position.x + displayWidth/15>= player.position.x)
  {
    return true;
  } else return false;
}

boolean OnRedHover() {
  if (
    stamp.position2.y <= player.position.y &&
    stamp.position2.y + displayWidth/20 >= player.position.y &&
    stamp.position2.x <= player.position.x &&
    stamp.position2.x + displayWidth/15 >= player.position.x)
  {
    return true;
  } else return false;
}

boolean OnIdHover() {
  if ((id.position.y <= player.position.y &&
    id.position.y + displayHeight/9 >= player.position.y &&
    id.position.x <= player.position.x &&
    id.position.x + displayWidth/5 >= player.position.x) && (id.checkingId == false))
  {
    return true;
  } else return false;
}

boolean OnLeverHover(){
  return (
    player.position.x <= displayWidth/1.05 && //change for lever position
    player.position.x >= displayWidth/1.31 &&
    player.position.y <= displayHeight/1.1 &&
    player.position.y >= displayHeight/1.6
  );
}


void CheckingIdHover() {
  if (id.checkingId) {
    if ((id.position.y <= player.position.y &&
      id.position.y + displayWidth/9 >= player.position.y &&
      id.position.x <= player.position.x &&
      id.position.x + displayWidth/5 >= player.position.x))
    {
      isCheckingId = true;
    } else isCheckingId = false;
  }
}

void drawAll() {
  
  if( isCheckingScan ){
    drawScan();
    return; //doesnt render the rest, not needed
  }
  
  for (Customer goodGuy : goodGuys) {
    goodGuy.DrawChar();
  } 
  image(Desk, 0, 0);
  screen.DrawInst();
  stamp.Draw();
  if (id.idDrawing)
    id.DrawID();
  player.Draw();
}

void drawScan(){ //empty just for testing out, add all the scaning gameplay
  
  image(scanBackground, 0, 0);
  print("we scanning");
}

//void keyReleased(){
//  if(key == 32);
//  charSel = (int)random(1, 5);
//}
