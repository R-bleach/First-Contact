void reset() {
  stamp.approved = false;
  stamp.decisionMade = false;
  mouseDownGreen = false;
  mouseDownRed = false;
  id.idDrawing = false;
  id.checkingId = false;
  inMiddle = false;
}

void mousePressed() {
  if (mouseButton == LEFT) {
    if (inMiddle && OnIdHover() ||inMiddle && id.checkingId && isCheckingId) {
      mouseDownId = true;
    } else if (inMiddle && OnGreenHover()) {
      mouseDownGreen = true;
    } else if (inMiddle && OnRedHover()) {
      mouseDownRed = true;
    } else if (isOnScreen && screen.instructions) {
      mouseDownScreen = true;
      charSel ++;
    } else if (inMiddle && OnLeverHover()) {
      isCheckingScan = !isCheckingScan;
    }
    else if (OnLeverHoverScreen()) {
      isCheckingScan = !isCheckingScan;
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

void OnInstOpenHover() {
  if (screen.instructions) {
    if (screen.position.y <= player.position.y &&
      screen.position.y + displayHeight/3 >= player.position.y &&
      screen.position.x <= player.position.x &&
      screen.position.x + displayWidth/8 >= player.position.x)
    {
      isOnScreen = true;
    } else isOnScreen = false;
  }
}

boolean OnLeverHover() {
  if (!isCheckingScan && charSel >=4 &&(
    player.position.x <= displayWidth/1.05 && //change for lever position
    player.position.x >= displayWidth/1.31 &&
    player.position.y <= displayHeight/1.1 &&
    player.position.y >= displayHeight/1.6
    )) //on main screen
    return true;
    else return false;
}
boolean OnLeverHoverScreen() {
  if (isCheckingScan && charSel >=4 &&
    (player.position.x <= displayWidth - displayWidth/1.31 && //change for lever position
    player.position.x >= 0 &&
    player.position.y <= displayHeight/1.1 &&
    player.position.y >= displayHeight/1.6)) //on scan scene
    return true;
  else return false;
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

  if ( isCheckingScan ) {
    drawScan();
    return; //doesnt render the rest, not needed
  }

  for (Customer goodGuy : goodGuys) {
    goodGuy.DrawChar();
  }
  image(Desk, 0, 0);
  stamp.Draw();
  if (id.idDrawing)
    id.DrawID();
  screen.DrawInstructions();
  player.Draw();
}

//void keyReleased(){
//  if(key == 32);
//  charSel = (int)random(1, 5);
//}
void fullReset(){
gameOver = false;
mouseDownGreen = false;
mouseDownRed = false;
isCheckingId = false;
mouseDownId = false;
mouseDownScreen = false;
isCheckingScan = false;
bouncerDead = false;
starDead = false;
isOnScreen = false;
inMiddle = false;
girlArrest = false;
girlEntered = false;
mouseDownScreen = false;
isOnScreen = false;

//mainMenu
gameStarted = false;
GameLoop = false;
loadMenu = true;
goodGuys.clear();
openingScene = 0;
timer = 0;
charSel = 0;
stamp.decisionMade = false;
minorIn = false;
reset = true;
}
