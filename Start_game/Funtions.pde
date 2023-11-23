void reset() {
  stamp.approved = false;
  stamp.decisionMade = false;
  mouseDownLeft = false;
  mouseDownRight = false;
  id.idDrawing = false;
  id.checkingId = false;
}

void mousePressed() {
  if (mouseButton == LEFT) {
    if (OnStampHover() && id.checkingId == false) {
      mouseDownLeft = true;
    }
    if (id.checkingId == false && OnIdHover() || id.checkingId && isCheckingId) {
      mouseDownId = true;
    }
  }

  if (mouseButton == RIGHT) {
    if (OnStampHover())
      mouseDownRight = true;
  }
}


boolean OnStampHover() {
  if (
    stamp.position.y <= player.position.y &&
    stamp.position.y + 50 >= player.position.y&&
    stamp.position.x <= player.position.x&&
    stamp.position.x + 100>= player.position.x)
  {
    return true;
  } else return false;
}

boolean OnIdHover() {
  if ((id.position.y <= player.position.y &&
    id.position.y + 150 >= player.position.y&&
    id.position.x <= player.position.x&&
    id.position.x + 180>= player.position.x)&&(id.checkingId == false))
  {
    return true;
  } else return false;
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
  for (Customer goodGuy : goodGuys) {
    goodGuy.Draw();
  }
  for (Customer badGuy : badGuys) {
    badGuy.Draw();
  }
  stamp.Draw();
  if (id.idDrawing)
    id.Draw();
  player.Draw();
}
