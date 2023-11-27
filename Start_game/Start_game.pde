Player player;
Stamp stamp;
IdCard id;
Screen screen;
//Button backButton;
boolean alreadyCounted = false;
ArrayList<Customer> goodGuys;
boolean gameOver = false;
boolean mouseDownGreen = false;
boolean mouseDownRed = false;
boolean isCheckingId = false;
boolean mouseDownId = false;
int charSel = 0;
boolean isCheckingScan = false;
boolean bouncerDead = false;
boolean starDead = false;

//mainMenu
boolean gameStarted = false;

void setup() {
  fullScreen();
  frameRate(60);
    player = new Player();
  stamp = new Stamp();
  goodGuys = new ArrayList();
  id = new IdCard();
  LoadImages();
}

void draw() {
  background(255);
  if (gameOver) {
    doGameOver();
  } else if(gameStarted){
    doGameLoop();
  //} else if(goToSettings){
  //  Settings();
  } else {
    MainMenu();
  }
}
