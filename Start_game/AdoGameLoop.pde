   void doGameLoop() {
  //backButton = new Button(width/100 - buttonWidth/2, height/100, 1, 1, "Images/playButtonImg.png");
  //backButton.update();
  background(backGround);
  player.update();
  if (charSel == 1 || charSel == 4) instructions = true;
    else instructions = false;

  spawnGuy();
  //OnGreenHover();
  //OnRedHover();
  //print(OnLeverHover());
  OnIdHover();
  CheckingIdHover();
  
  CheckGuys(goodGuys);
  
  CheckID();

  drawAll();
}
