class Button
{
  PVector Pos = new PVector(0,0);
  float Width = 0;
  float Height = 0;
  float TimesWidth = 1;
  float TimesHeight = 1;
  color Color;
  PImage ButtonImage;
  //String Text; ///remove later if added in the asset
  Boolean Pressed = false;
  Boolean Clicked = false;
  
  Button(int x, int y, int w, int h, String img)
  {
    
    TimesWidth = w;
    TimesHeight = h;
    ButtonImage = loadImage(img);
    Width = ButtonImage.width;
    Height = ButtonImage.height;
    Pos.x = x - Width/2;
    Pos.y = y - Height/2;
    
    //Text = t; //erase later
    //Color = color(r, g, b);
   
  }
  
  void update()
  {
    if(mousePressed == true && mouseButton == LEFT && Pressed == false)
    {
      Pressed = true;
      
      if( mouseX >= Pos.x && mouseX <= Pos.x + Width && mouseY >= Pos.y && mouseY <= Pos.y + Height )
      {
        Clicked = true;
      }
      else {
        Clicked = false;
        Pressed = false;
      }
    }
  }
  
  void render() //must be in draw function
  {
    //fill(Color);
    //rect(Pos.x, Pos.y, Width, Height);
    
    //fill(0);
    //textAlign(CENTER, CENTER);
    //text(Text, Pos.x + ( Width/2), Pos.y + (Height/2));
    image(ButtonImage, Pos.x, Pos.y, Width * TimesWidth, Height * TimesHeight);
    
  }
  
  boolean isClicked(){
    return Clicked;
  }
  
}
