void CheckGuys(ArrayList<Customer> guys) {
  for (int i = guys.size()-1; i >= 0; --i) {

    Customer currentGuy = guys.get(i);

    if (OnGreenHover() && id.checkingId == false) {
      if (mouseDownGreen && !mouseDownRed) {
        stamp.decisionMade = true;
        currentGuy.passed = true;
        stamp.approved = true;
      }
    }
    if (OnRedHover() && id.checkingId == false) {
      if (mouseDownRed && !mouseDownGreen) {
        stamp.decisionMade = true;
        currentGuy.passed = false;
        stamp.approved = false;
      }
    }

    if (stamp.decisionMade)
    {

      if (currentGuy.passed)
        currentGuy.update(true);
      if (!currentGuy.passed)
        currentGuy.update(false);

      if  (currentGuy.position.x <= 0|| currentGuy.position.x > width) {

          if (currentGuy.passed && (charSel == 1|| charSel == 2||charSel == 3 || charSel == 5 || charSel == 8)
            ||!currentGuy.passed && (charSel == 1 || charSel == 2||charSel == 3 || charSel == 4 || charSel == 5 || charSel == 7 || charSel == 8 || charSel == 9 )) {
            reset();
            guys.remove(i);
          }
          if (!currentGuy.passed && charSel == 6) {
            bouncerDead = true;
            starDead = true;
            reset();
            gameOver = true;
          }
          if (currentGuy.passed && charSel == 4 || charSel == 7 || charSel == 9) {
            starDead = true;
            gameOver = true;
          }
          if (currentGuy.passed && charSel == 6 || charSel == 10) {
            starDead = !starDead;
          }
      }
    } else if (!stamp.decisionMade) {
      if (currentGuy.position.x < width/2) {
        currentGuy.update(true);
      }
    }
  }
}
