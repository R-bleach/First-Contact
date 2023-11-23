
void MainMenu(){
  playButton.update();
  optionsButton.update();
  creditsButton.update();
  drawMenu();
  
  if (playButton.isClicked()){
    gameStarted = true;
  }
}

void drawMenu() {
  background(255);
  
  //game title
  fill(0);
  textAlign(CENTER, CENTER);
  text("GAME TITTLE", screenSizeX/2, 100);
    
  playButton.render();
  optionsButton.render();
  creditsButton.render();
  
}
