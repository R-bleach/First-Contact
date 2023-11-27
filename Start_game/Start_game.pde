Player player;
Stamp stamp;
IdCard id;
Screen screen;
Scanned scanned;
//Button backButton;
ArrayList<Customer> goodGuys;
boolean gameOver = false;
boolean mouseDownGreen = false;
boolean mouseDownRed = false;
boolean isCheckingId = false;
boolean mouseDownId = false;
boolean mouseDownScreen = false;
int charSel = 0;
boolean isCheckingScan = false;
boolean bouncerDead = false;
boolean starDead = false;
boolean isOnScreen = false;

//mainMenu
boolean gameStarted = false;

void setup() {
  fullScreen();
  frameRate(60);
  player = new Player();
  stamp = new Stamp();
  goodGuys = new ArrayList();
  id = new IdCard();
  screen = new Screen();
  scanned = new Scanned();
  LoadImages();
}

void draw() {
  background(255);
  if (gameOver) {
    doGameOver();
  } else if (gameStarted) {
    doGameLoop();
    //} else if(goToSettings){
    //  Settings();
  } else {
    MainMenu();
  }
}
