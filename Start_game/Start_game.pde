Player player;
Stamp stamp;
IdCard id;
boolean alreadyCounted = false;
ArrayList<Customer> goodGuys;
ArrayList<Customer> badGuys;
boolean gameOver = false;
boolean mouseDownGreen = false;
boolean mouseDownRed = false;
int ageNumber;
int mistakes = 0;
int customersHelped = 0;
boolean isCheckingId = false;
boolean mouseDownId = false;
boolean badFace = false;
int characterSelector;
boolean isCheckingScan = false;

//mainMenu
boolean gameStarted = false;

void setup() {
  fullScreen();
  frameRate(60);
    player = new Player();
  stamp = new Stamp();
  goodGuys = new ArrayList();
  badGuys = new ArrayList();
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
