void reset() {
  stamp.approved = false;
  stamp.decisionMade = false;
  mouseDownLeft = false;
  mouseDownRight = false;
  id.idDrawing = false;
  id.checkingId = false;
  isCheckingId = false;
}

void mousePressed() {
  if (mouseButton == LEFT) {
    if (isOnStamp && id.checkingId == false) {
      mouseDownLeft = true;
    }
    if (id.checkingId == false &&isOnId || id.checkingId && isCheckingId) {
      mouseDownId = true;
    }
  }

  if (mouseButton == RIGHT) {
    if (isOnStamp)
      mouseDownRight = true;
  }
}


void OnStampHover() {
  if (
    stamp.position.y <= player.position.y &&
    stamp.position.y + 50 >= player.position.y&&
    stamp.position.x <= player.position.x&&
    stamp.position.x + 100>= player.position.x)
  {
    isOnStamp = true;
  } else isOnStamp = false;
}

void OnIdHover() {
  if ((id.position.y <= player.position.y &&
    id.position.y + 150 >= player.position.y&&
    id.position.x <= player.position.x&&
    id.position.x + 180>= player.position.x)&&(id.checkingId == false))
  {
    isOnId = true;
  } else isOnId = false;
}
void CheckingIdHover() {
  if (id.checkingId) {
    if ((id.positionChecking.y <= player.position.y &&
      id.positionChecking.y + 200 >= player.position.y&&
      id.positionChecking.x <= player.position.x&&
      id.positionChecking.x + 400>= player.position.x))
    {
      isCheckingId = true;
    } else isCheckingId = false;
  }
}

void drawAll() {
  stamp.Draw();
  for (Customer goodGuy : goodGuys) {
    goodGuy.Draw();
  }
  for (Customer badGuy : badGuys) {
    badGuy.Draw();
  }
  if (id.idDrawing)
    id.Draw();
  player.Draw();
}
