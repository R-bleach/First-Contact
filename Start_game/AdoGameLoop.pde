   void doGameLoop() {
  //backButton = new Button(width/100 - buttonWidth/2, height/100, 1, 1, "Images/playButtonImg.png");
  //backButton.update();
  background(backGround);
  player.update();

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
