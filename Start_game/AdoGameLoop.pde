void doGameLoop() {
  //println(charSel);
  //backButton = new Button(width/100 - buttonWidth/2, height/100, 1, 1, "Images/playButtonImg.png");
  //backButton.update();
  if (charSel == 12){
    gameOver = true;}
  background(backGround);
  player.update();

  spawnGuy();
  //OnGreenHover();
  //OnRedHover();
  //print(OnLeverHover());
  OnIdHover();
  CheckingIdHover();
  OnInstOpenHover();

  CheckGuys(goodGuys);

  id.CheckID();
  screen.CheckInst();

  drawAll();
}
