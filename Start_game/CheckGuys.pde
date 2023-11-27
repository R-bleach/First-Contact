void CheckGuys(ArrayList<Customer> guys) {
  for (int i = guys.size()-1; i >= 0; --i) {

    Customer currentGuy = guys.get(i);

    if (OnGreenHover() && id.checkingId == false && !isCheckingScan //&& inMiddle
    ) {
      if (mouseDownGreen && !mouseDownRed) {
        stamp.decisionMade = true;
        currentGuy.passed = true;
        stamp.approved = true;
      }
    }
    if (OnRedHover() && id.checkingId == false && !isCheckingScan //&& inMiddle
    ) {
      if (mouseDownRed && !mouseDownGreen) {
        stamp.decisionMade = true;
        currentGuy.passed = false;
        stamp.approved = false;
      }
    }
    if (currentGuy.position.x >= width/2 - 50 ) {
        inMiddle = true;
    }
    else inMiddle = false;
    if (stamp.decisionMade)
    {

      if (currentGuy.passed)
        currentGuy.update(true);
      if (!currentGuy.passed)
        currentGuy.update(false);

      if  (currentGuy.position.x <= 0|| currentGuy.position.x > width) {

        if (currentGuy.passed && (charSel == 1|| charSel == 2||charSel == 3 || charSel == 8 || charSel == 9)
          ||!currentGuy.passed && (charSel == 1 || charSel == 2||charSel == 3 || charSel == 5 || charSel == 6 || charSel == 8 || charSel == 9 || charSel == 10 )) {
          reset();
          guys.remove(i);
        }
        if (!currentGuy.passed && charSel == 7) {
          bouncerDead = true;
          starDead = true;
          println("a " + charSel);
          gameOver = true;
          println("b " + charSel);
        }
        if (currentGuy.passed == true && (charSel == 5 || charSel == 6 || charSel == 10)) {
          starDead = true;
          gameOver = true;
          println("oof");
        }
        if (currentGuy.passed && charSel == 7) {
          starDead = true;
          reset();
          guys.remove(i);
          println(starDead);
        }
        if (currentGuy.passed && charSel == 11 && starDead == true) {
            starDead = false;
            girlArrest = true;
            reset();
            guys.remove(i);
            println(starDead);
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
