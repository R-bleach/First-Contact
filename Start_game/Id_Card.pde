class IdCard {
  float widthCard = displayWidth/10;
  float heightCard = (widthCard /1.75);
  float widthCardCheck = displayWidth/4;
  float heightCardCheck = (widthCardCheck /2);
  PVector position;
  PVector positionChecking;
  boolean checkingId = false;
  boolean idDrawing = false;
  
  IdCard() {
    if (checkingId == false) {
      position = new PVector(displayWidth/2.5, displayHeight/ 1.15);
    }
  }

  void Draw() {
    if (checkingId == false) {
    }
    {
      if (checkingId == true) {
        positionChecking = new PVector(width/2-(widthCardCheck/2), height/ 2.2);
        image(IdButton,0,0);
        
        image(hologramImages[characterSelector -1], 0, 0); //show the ID of the customer
        
        /*
        if(characterSelector == 3)
          image(hologramIdSnake,0,0);
        
        else{
          push();
          stroke(0);
          fill(#0abdc6);
          rect(positionChecking.x, positionChecking.y, widthCardCheck, heightCardCheck);
          square(positionChecking.x + displayWidth/5.5, positionChecking.y + displayHeight/50, widthCardCheck/5);
          pop();
          
          push();
          stroke(0);
          fill(#0abdc6);
          triangle(positionChecking.x , positionChecking.y + heightCardCheck, 
          positionChecking.x + widthCardCheck/2, positionChecking.y + heightCardCheck*1.4,
          positionChecking.x + widthCardCheck, positionChecking.y + heightCardCheck);
          pop();
  
  
          push();
          fill(0);
          textSize(20);
          text("age: " + ageNumber, positionChecking.x + displayWidth/50, positionChecking.y + 40);
          pop();
          Face();
        }
        
        */
      }
    }
  }
  void Face() {
    if (badFace) {
      push();
      fill(255, 0, 0);
      square(positionChecking.x + displayWidth/5.175, positionChecking.y + displayHeight/25, 50);
      pop();
    } else {
      fill(0);
      square(positionChecking.x + displayWidth/5.175, positionChecking.y + displayHeight/25, 50);
    }
  }
}
