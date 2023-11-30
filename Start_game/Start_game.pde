import java.util.ArrayList;
import java.util.Arrays;

Player player;
Restart restart;
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
boolean inMiddle = false;
boolean girlArrest = false;
boolean girlEntered = false;
boolean reset = true;
boolean speaking = false;
boolean minorIn = false;
int customersIn;
boolean spaceKeyPressed = false;
boolean decisionMade = false;;

//mainMenu
boolean gameStarted = false;  
boolean GameLoop = false;

//character dialogs
ArrayList<ArrayList<String>> allCustomerDialogs = new ArrayList<ArrayList<String>>();

void setup() {
  fullScreen();
  frameRate(60);
  player = new Player();
  stamp = new Stamp();
  goodGuys = new ArrayList();
  id = new IdCard();
  screen = new Screen();
  scanned = new Scanned();
  restart = new Restart();
  LoadImages();
  
  textSize(32);
  LoadAllDialogs();
}

void draw() {
  background(255);
  if (gameOver) {
    doGameOver();
  } else if (GameLoop) {
    doGameLoop();
  }
  else if (gameStarted) {
    opening();
  } else {
    MainMenu();
  }
}
