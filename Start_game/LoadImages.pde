PImage Cowgirl;
PImage Frog;
PImage Snake;
PImage Spider;
PImage Alien;
PImage Celestial;
PImage Chonker;
PImage Fish;
PImage Fly;
PImage Goblin;

PImage IdSnake;
PImage IdAlien;
PImage IdCowgirl;
PImage IdFrog;
PImage IdSpider;
PImage IdCelestial;
PImage IdChonker;
PImage IdFish;
PImage IdFly;
PImage IdGoblin;


PImage ScanCowgirl1;
PImage ScanCowgirl2;
PImage ScanFrog;


PImage backGround;
PImage Desk;
PImage GreenButton;
PImage IdButton;
PImage InstPanelClosed;
PImage InstPanelOpen;
PImage RedButton;
PImage Floyd;
PImage scanBackground;
PImage leverScanScene;
PImage Instructions1;
PImage Instructions2;

PImage Opening1;
PImage Opening2;
PImage Opening3;
PImage Opening4;

PImage neutralEnding;  


void LoadImages() {
  backGround = loadImage("Images/BG.png");
    backGround.resize(displayWidth, displayHeight);

  scanBackground = loadImage("Images/scanner_room.png");
    scanBackground.resize(displayWidth, displayHeight);

  IdSnake = loadImage("Images/hologramIdSnake.png");
    IdSnake.resize(displayWidth, displayHeight);
  IdAlien = loadImage("Images/hologramAlien.png");
    IdAlien.resize(displayWidth, displayHeight);
  IdCowgirl = loadImage("Images/hologramCowGirl.png");
    IdCowgirl.resize(displayWidth, displayHeight);
  IdSpider = loadImage("Images/hologramSpider.png");
    IdSpider.resize(displayWidth, displayHeight);
  IdCelestial = loadImage("Images/hologramAlien.png");
    IdCelestial.resize(displayWidth, displayHeight);
  IdChonker = loadImage("Images/hologramChonker.png");
    IdChonker.resize(displayWidth, displayHeight);
  IdFish = loadImage("Images/hologramFish.png");
    IdFish.resize(displayWidth, displayHeight);
  IdFly = loadImage("Images/hologramFly.png");
    IdFly.resize(displayWidth, displayHeight);
  IdGoblin = loadImage("Images/hologramGoblin.png");
    IdGoblin.resize(displayWidth, displayHeight);
  IdFrog = loadImage("Images/hologramFrog.png");
    IdFrog.resize(displayWidth, displayHeight);
  IdCelestial = loadImage("Images/hologramCelestial.png");
    IdCelestial.resize(displayWidth, displayHeight);

  Floyd = loadImage("Images/floyd.png");
    Floyd.resize(Floyd.width*3, Floyd.height*3);

  Cowgirl = loadImage("Images/cowgirl.png");
    Cowgirl.resize((Cowgirl.width*3), (Cowgirl.height*3));
  Frog = loadImage("Images/FROG.png");
    Frog.resize(Frog.width*3, Frog.height*3);
  Snake = loadImage("Images/snake_dude.png");
    Snake.resize(Snake.width*3, Snake.height*3);
  Spider = loadImage("Images/spiderlady.png");
    Spider.resize(Spider.width*5, Spider.height*5);
  Alien = loadImage("Images/alien.png");
    Alien.resize(Alien.width*3, Alien.height*3);
  Celestial = loadImage("Images/celestialbeing.png");
    Celestial.resize(Celestial.width*3, Celestial.height*3);
  Chonker = loadImage("Images/chonker.png");
    Chonker.resize(Chonker.width*3, Chonker.height*3);
  Fish = loadImage("Images/fishhead.png");
    Fish.resize(Fish.width*3, Fish.height*3);
  Fly = loadImage("Images/flyguy.png");
    Fly.resize(Fly.width*3, Fly.height*3);
  Goblin = loadImage("Images/goblin.png");
    Goblin.resize(Goblin.width*3, Goblin.height*3);

  ScanCowgirl1 = loadImage("Images/cowboy_girl_xray1.png");
    ScanCowgirl1.resize(displayWidth, displayHeight);
  ScanCowgirl2 = loadImage("Images/cowboy_girl_xray2.png");
    ScanCowgirl2.resize(displayWidth, displayHeight);
  ScanFrog = loadImage("Images/frog_xray.png");
    ScanFrog.resize(displayWidth, displayHeight);

  Desk = loadImage("Images/Desk.png");
    Desk.resize(displayWidth, displayHeight);
    GreenButton = loadImage("Images/green_button_pressed.png");
      GreenButton.resize(displayWidth, displayHeight);
    RedButton = loadImage("Images/red_button_pressed.png");
      RedButton.resize(displayWidth, displayHeight);
    IdButton = loadImage("Images/ID_button_pressed.png");
      IdButton.resize(displayWidth, displayHeight);
    leverScanScene = loadImage("Images/switch2.png");
      leverScanScene.resize(displayWidth, displayHeight);
    InstPanelClosed = loadImage("Images/instruction_panel_closed.png");
      InstPanelClosed.resize(displayWidth, displayHeight);
    InstPanelOpen = loadImage("Images/instruction_panel_open.png");
      InstPanelOpen.resize(displayWidth, displayHeight);
    Instructions1= loadImage("Images/Instructions1.png");
      Instructions1.resize(displayWidth/2, displayHeight/2);
    Instructions2= loadImage("Images/Instructions2.png");
      Instructions2.resize(displayWidth/2, displayHeight/2);
      
  Opening1 = loadImage("Images/opening1.png");
    Opening1.resize(displayWidth, displayHeight);
  Opening2 = loadImage("Images/opening2.png");
    Opening2.resize(displayWidth, displayHeight);
  Opening3 = loadImage("Images/poster.png");
    Opening3.resize(displayWidth, displayHeight);
  Opening4 = loadImage("Images/opening4.png");
    Opening4.resize(displayWidth, displayHeight);
    
  neutralEnding = loadImage("Images/neutral_ending.png");
    neutralEnding.resize(displayWidth, displayHeight);
    
}
