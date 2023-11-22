Player player;
Stamp stamp;
IdCard id;
ArrayList<Customer> goodGuys;
ArrayList<Customer> badGuys;
boolean gameOver = false;
boolean mouseDownLeft = false;
boolean mouseDownRight = false;
int m = millis();
boolean isOnStamp = false;
int ageNumber;
int mistakes = 0;
int customersHelped = 0;
boolean isOnId = false;
boolean isCheckingId = false;
boolean mouseDownId = false;
boolean badFace = false;

void setup() {
  size (1140, 640);
  frameRate(60);
  player = new Player();
  stamp = new Stamp();
  goodGuys = new ArrayList();
  badGuys = new ArrayList();
  id = new IdCard();
}

void draw() {
  background(255);
  if (gameOver) {
    doGameOver();
  } else
    doGameLoop();
}
