void doGameOver() {
  textSize(100);
  background(backGround);
  image(Desk, 0, 0);
  screen.DrawInstructions();
  if (gameOver == true && bouncerDead) {
    if (second()%2==0) text ("DEAD", width/2, height/2 - 15);
  }
  if (gameOver == true && bouncerDead && starDead) {
    if (second()%2==0) text ("DEAD & STAR DEAD", width/2, height/2 - 15);
  }
  if (gameOver == true && !bouncerDead && starDead) {
    if (second()%2==0) text ("FIRED", width/2, height/2 - 15);
  }
  if (gameOver == true && !bouncerDead && !starDead) {
    if (second()%2==0) text ("CONGRATS", width/2, height/2 - 15);
  }
}
