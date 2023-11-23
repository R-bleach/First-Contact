Player player;
Stamp stamp;
IdCard id;
PImage Cowgirl;
PImage Frog;
PImage Snake;
PImage Spider;
boolean alreadyCounted = false;
ArrayList<Customer> goodGuys;
ArrayList<Customer> badGuys;
boolean gameOver = false;
boolean mouseDownLeft = false;
boolean mouseDownRight = false;
int ageNumber;
int mistakes = 0;
int customersHelped = 0;
boolean isCheckingId = false;
boolean mouseDownId = false;
boolean badFace = false;
int characterSelector;

//mainMenu
boolean gameStarted = false;
Button playButton;
Button optionsButton;
Button creditsButton;
int screenSizeX = width;
int screenSizeY = height;

void setup() {
  fullScreen();
  //size(1140,640);
  frameRate(60);
  player = new Player();
  stamp = new Stamp();
  goodGuys = new ArrayList();
  badGuys = new ArrayList();
  id = new IdCard();
  
  //menu
  playButton = new Button(screenSizeX/2 - 120/2, 300, 120, 50, "PLAY", 0, 200, 200);
  optionsButton = new Button(screenSizeX/2 - 120/2, 400, 120, 50, "OPTIONS", 0, 200, 200);
  creditsButton = new Button(screenSizeX/2 - 120/2, 500, 120, 50, "CREDITS", 0, 200, 200);
}

void draw() {
  background(#711c91);
  if (gameOver) {
    doGameOver();
  } else if(gameStarted){
    doGameLoop();
  } else {
    MainMenu();
  }
}
