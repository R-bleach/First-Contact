boolean loadMenu = true;
Button playButton;
Button optionsButton;
Button creditsButton;
Button exitButton;

PImage backgroundImg;
PImage playButtonImg;
PImage optionsButtonImg;
PImage creditsButtonImg;
PImage exitButtonImg;

int buttonWidth = 220;

void MainMenu(){
  
  if (loadMenu){
    loadMenuScene();
  }
  playButton.update();
  optionsButton.update();
  creditsButton.update();
  exitButton.update();
  drawMenu();
  
  
  //BUTTON ACTIONS
  if (playButton.isClicked()){
    gameStarted = true;
  }
  
  if (exitButton.isClicked()){
    exit();
  }
  
  //if (optionsButton.isClicked()){
  //  goToSettings = true;
  //}
}

void drawMenu() {
  background(255);
  image(backgroundImg, 0, 0, width, height);
  //image(Floyd,width/10,3);

  //game title
  fill(0);
  textAlign(CENTER, CENTER);
  text("GAME TITTLE", width/2, 100);
    
  playButton.render();
  optionsButton.render();
  creditsButton.render();
  exitButton.render();
  
}

void loadMenuScene() {
  loadMenu = false;
  
  //images
  backgroundImg = loadImage("Images/backgroundMenuTest.jpg");
  
  //menu
  playButton = new Button(width/2 - buttonWidth/2, height/2, 1, 1, "Images/playButtonImg.png");
  optionsButton = new Button(width/2 - buttonWidth/2, height/2 + 100, 1, 1, "Images/playOptionsImg.png");
  creditsButton = new Button(width/2 - buttonWidth/2, height/2 + 200, 1, 1, "Images/playOptionsImg.png");
  exitButton = new Button(width/2 - buttonWidth/2, height/2 + 300, 1, 1, "Images/playExitImg.png");
  


}
