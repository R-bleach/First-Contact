 void doGameLoop() {
  if (customersHelped == 10){
   gameOver = true;
  }
  background(backGround);
  player.update();

  spawnGuy();
  //OnGreenHover();
  //OnRedHover();
  //print(OnLeverHover());
  OnIdHover();
  CheckingIdHover();
  
  CheckGuys(goodGuys);
  CheckGuys(badGuys);
  
  CheckID();

  drawAll();
}
