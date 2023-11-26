PImage Cowgirl;
PImage Frog;
PImage Snake;
PImage Spider;
PImage Alien;
PImage Celestial;
PImage Chonker;
PImage Fish;
PImage Fly;

PImage backGround;
PImage Desk;
PImage GreenButton;
PImage IdButton;
PImage InstPanelClosed;
PImage RedButton;
PImage Floyd;

PImage hologramIdCowgirl;
PImage hologramIdFrog;
PImage hologramIdSnake;
PImage hologramIdSpider;
PImage hologramIdAlien;
PImage hologramIdCelestial;
PImage hologramIdChonker;
PImage hologramIdFish;
PImage hologramIdFly;
PImage[] hologramImages = new PImage[9]; //store all IDs

PImage scanBackground;

void LoadImages() {
  backGround = loadImage("Images/BG.png");
    backGround.resize(displayWidth, displayHeight);
    
  scanBackground = loadImage("Images/scanner_room.png");
  scanBackground.resize(displayWidth, displayHeight);
  
  
  
  /*
  hologramIdCowgirl = loadImage("Images/hologramIdSnake.png"); //1
    hologramIdCowgirl.resize(displayWidth, displayHeight);
  hologramIdFrog = loadImage("Images/hologramIdSnake.png"); //2
    hologramIdFrog.resize(displayWidth, displayHeight);
  hologramIdSnake = loadImage("Images/hologramIdSnake.png"); //3
    hologramIdSnake.resize(displayWidth, displayHeight);
  hologramIdSpider = loadImage("Images/hologramIdSnake.png"); //4
    hologramIdSpider.resize(displayWidth, displayHeight);
  hologramIdAlien = loadImage("Images/hologramIdSnake.png"); //5
    hologramIdAlien.resize(displayWidth, displayHeight);
  hologramIdCelestial = loadImage("Images/hologramIdSnake.png"); //6
    hologramIdCelestial.resize(displayWidth, displayHeight);
  hologramIdChonker = loadImage("Images/hologramIdSnake.png"); //7
    hologramIdChonker.resize(displayWidth, displayHeight);
  hologramIdFish = loadImage("Images/hologramIdSnake.png"); //8
    hologramIdFish.resize(displayWidth, displayHeight);
  hologramIdFly = loadImage("Images/hologramIdSnake.png"); //9
    hologramIdFly.resize(displayWidth, displayHeight);
  */
  
  //save IDs in the array
  //change all image routes later to their IDs
  hologramImages[0] = loadImage("Images/hologramIdSnake.png"); //1
    hologramImages[0].resize(displayWidth, displayHeight);
  hologramImages[1] = loadImage("Images/hologramIdSnake.png"); //2
    hologramImages[1].resize(displayWidth, displayHeight);
  hologramImages[2] = loadImage("Images/hologramIdSnake.png"); //3
    hologramImages[2].resize(displayWidth, displayHeight);
  hologramImages[3] = loadImage("Images/hologramIdSnake.png"); //4
    hologramImages[3].resize(displayWidth, displayHeight);
  hologramImages[4] = loadImage("Images/hologramIdSnake.png"); //5
    hologramImages[4].resize(displayWidth, displayHeight);
  hologramImages[5] = loadImage("Images/hologramIdSnake.png"); //6
    hologramImages[5].resize(displayWidth, displayHeight);
  hologramImages[6] = loadImage("Images/hologramIdSnake.png"); //7
    hologramImages[6].resize(displayWidth, displayHeight);
  hologramImages[7] = loadImage("Images/hologramIdSnake.png"); //8
    hologramImages[7].resize(displayWidth, displayHeight);
  hologramImages[8] = loadImage("Images/hologramIdSnake.png"); //9
    hologramImages[8].resize(displayWidth, displayHeight);
  
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
  
    
  Desk = loadImage("Images/Desk.png");
    Desk.resize(displayWidth, displayHeight);
    
  GreenButton = loadImage("Images/green_button_pressed.png");
    GreenButton.resize(displayWidth, displayHeight);
  RedButton = loadImage("Images/red_button_pressed.png");
    RedButton.resize(displayWidth, displayHeight);
    
  IdButton = loadImage("Images/ID_button_pressed.png");
    IdButton.resize(displayWidth, displayHeight);
    
  InstPanelClosed = loadImage("Images/instruction_panel_closed.png");
    InstPanelClosed.resize(displayWidth/20, displayHeight/2);
}
