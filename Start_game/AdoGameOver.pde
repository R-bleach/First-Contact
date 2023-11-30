void doGameOver() {
  textSize(100);
  background(backGround);
  image(Desk, 0, 0);
  if(frameCount%1 == 0)
  timer ++;
  screen.DrawInstructions();
  if (gameOver == true && bouncerDead && starDead && customersIn >= 4) {
    if (second()%2==0) text ("DEAD & STAR DEAD", width/2, height/2 - 15);
  }
  else if (gameOver == true && !bouncerDead && starDead && customersIn >= 4) {
    image(neutralEnding,0,0);
  }
  else if (gameOver == true && girlArrest && customersIn >= 4) {
    if (second()%2==0) text ("CONGRATS", width/2, height/2 - 15);
  }
  else if (gameOver == true && minorIn || gameOver == true && customersIn < 4) {
    if (second()%2==0) text ("FIRED", width/2, height/2 - 15);
  }
  if(timer == 120){
    fullReset();
  }
}
