void doGameLoop() {
  if (customersHelped == 10){
   gameOver = true;
  }
  player.update();

  spawnGuy();
  
  OnStampHover();
  OnIdHover();
  CheckingIdHover();
  
  CheckGuys(goodGuys);
  CheckGuys(badGuys);
  
  CheckID();


  drawAll();
}
