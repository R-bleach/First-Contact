PImage Cowgirl;
PImage Frog;
PImage Snake;
PImage Spider;
PImage backGround;
PImage Desk;
PImage GreenButton;
PImage IdButton;
PImage InstPanelClosed;
PImage RedButton;
PImage Floyd;
PImage hologramIdSnake;

void LoadImages() {
  backGround = loadImage("Images/BG.png");
    backGround.resize(displayWidth, displayHeight);
  
  hologramIdSnake = loadImage("Images/hologramIdSnake.png");
    hologramIdSnake.resize(displayWidth, displayHeight);
    
  Floyd = loadImage("Images/floyd.png");
    Floyd.resize(Floyd.width*3, Floyd.height*3);
    
  Cowgirl = loadImage("Images/cowgirl.png");
    Cowgirl.resize((Cowgirl.width*3), (Cowgirl.height*3));
  Frog = loadImage("Images/FROG.png");
    Frog.resize(Frog.width*3, Frog.height*3);
  Snake = loadImage("Images/snake_dude.png");
    Snake.resize(Snake.width*3, Snake.height*3);
  Spider = loadImage("Images/spiderlady.png");
    Spider.resize(Spider.width*3, Spider.height*3);
    
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
