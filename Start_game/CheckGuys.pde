void CheckGuys(ArrayList<Customer> guys) {
  //println("size of guys" + guys.size());
  for (int i = guys.size()-1; i >= 0; --i) {

    Customer currentGuy = guys.get(i);

    if (OnGreenHover() && id.checkingId == false && !isCheckingScan
    ) {
      if (mouseDownGreen && !mouseDownRed) {
        stamp.decisionMade = true;
        currentGuy.makeDecision(true);
        stamp.approved = true;
      }
    }
    if (OnRedHover() && id.checkingId == false && !isCheckingScan
    ) {
      if (mouseDownRed && !mouseDownGreen) {
        stamp.decisionMade = true;
        currentGuy.makeDecision(false);
        stamp.approved = false;
      }
    }
    if (currentGuy.position.x >= width/2 - 50 ) {
        inMiddle = true;
    }
    else inMiddle = false;
    if (stamp.decisionMade)
    {
      //show dialog
      if (currentGuy.isSpeaking()){
        currentGuy.showDialog();
      } //if no more text
      else {
        if (currentGuy.passed)
          currentGuy.update(true);
        if (!currentGuy.passed)
          currentGuy.update(false);
      }

      if  (currentGuy.position.x <= 0|| currentGuy.position.x > width) {
        if (currentGuy.passed && (charSel == 1|| charSel == 2||charSel == 3 || charSel == 6 || charSel == 9)
          ||!currentGuy.passed && (charSel == 1 || charSel == 2||charSel == 3 || charSel == 5 || charSel == 6 || charSel == 8 || charSel == 9 || charSel == 10 )) {
          reset();
          guys.remove(i);
        }
        if (!currentGuy.passed && charSel == 7) {
          bouncerDead = true;
          starDead = true;
          girlEntered = false;
          reset();
          guys.remove(i);
        }
        if (currentGuy.passed == true && (charSel == 5 || charSel == 8 || charSel == 10)) {
          starDead = true;
          guys.remove(i);
        }
        if (currentGuy.passed && charSel == 7) {
          starDead = true;
          reset();
          guys.remove(i);
        }
        if (currentGuy.passed && charSel == 3) {
          minorIn = true;
          reset();
          guys.remove(i);
        }
        if (currentGuy.passed && charSel == 11) {
          if(girlEntered){
            starDead = false;
            girlArrest = true;}
            reset();
            guys.remove(i);
          }
        charSel ++;
      }
      
      
    } else if (!stamp.decisionMade) {
      if (currentGuy.position.x < width/2) {
        currentGuy.update(true);
      }
    }
  }
}
