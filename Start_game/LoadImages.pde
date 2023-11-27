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


PImage backGround;
PImage Desk;
PImage GreenButton;
PImage IdButton;
PImage InstPanelClosed;
PImage InstPanelOpen;
PImage RedButton;
PImage Floyd;
PImage scanBackground;


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
    
  Floyd = loadImage("Images/floyd.png");
    Floyd.resize(Floyd.width*3, Floyd.height*3);
  
  
  //Load customers
  Cowgirl = loadImage("Images/cowgirl.png");
    Cowgirl.resize((Cowgirl.width*3), (Cowgirl.height*3));
  Frog = loadImage("Images/FROG.png");
    Frog.resize(Frog.width*3, Frog.height*3);
  Snake = loadImage("Images/snake_dude.png");
    Snake.resize(Snake.width*3, Snake.height*3);
  Spider = loadImage("Images/spiderlady.png");
    Spider.resize(Spider.width*3, Spider.height*3);
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

    
  Desk = loadImage("Images/Desk.png");
    Desk.resize(displayWidth, displayHeight);
    
  GreenButton = loadImage("Images/green_button_pressed.png");
    GreenButton.resize(displayWidth, displayHeight);
  RedButton = loadImage("Images/red_button_pressed.png");
    RedButton.resize(displayWidth, displayHeight);
    
  IdButton = loadImage("Images/ID_button_pressed.png");
    IdButton.resize(displayWidth, displayHeight);
    
  InstPanelClosed = loadImage("Images/instruction_panel_closed.png");
    InstPanelClosed.resize(displayWidth/2, displayHeight/2);
  InstPanelOpen = loadImage("Images/instruction_panel_open.png");
    InstPanelOpen.resize(displayWidth/2, displayHeight/2);
}
