void doGameOver() {
  textSize(100);
  background(backGround);
  image(Desk, 0, 0);
  image(InstPanelClosed, 0, height/4);
  for (Customer goodGuy : goodGuys) {
    if (gameOver == true && mistakes > 3) {
      if (second()%2==0) text ("YOU'RE FIRED !!", width/2, height/2 - 15);
    }
    if (gameOver == true && goodGuy.passed) {
      if (second()%2==0) text ("CONGRATS", width/2, height/2 - 15);
    }
  }
  for (Customer badGuy : badGuys) {
    if (gameOver == true && badGuy.passed) {
      if (second()%2==0) text ("YOU'RE FIRED !!", width/2, height/2 - 15);
    }
    if (gameOver == true && !badGuy.passed) {
      if (second()%2==0) text ("CONGRATS", width/2, height/2 - 15);
    }
  }
}
