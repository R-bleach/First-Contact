void doGameOver() {
  textSize(100);
  background(backGround);
  image(Desk, 0, 0);
  if(frameCount%1 == 0)
  timer ++;
  screen.DrawInstructions();
  if (gameOver == true && bouncerDead && starDead) {
    if (second()%2==0) text ("DEAD & STAR DEAD", width/2, height/2 - 15);
  }
  if (gameOver == true && !bouncerDead && starDead) {
    image(neutralEnding,0,0);
  }
  if (gameOver == true && girlArrest) {
    if (second()%2==0) text ("CONGRATS", width/2, height/2 - 15);
  }
  if (gameOver == true && minorIn) {
    if (second()%2==0) text ("FIRED", width/2, height/2 - 15);
  }
  if(timer == 120){
    fullReset();
  }
}
