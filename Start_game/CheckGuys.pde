void CheckGuys(ArrayList<Customer> guys) {
  for (int i = guys.size()-1; i >= 0; --i) {

    Customer currentGuy = guys.get(i);

    if (isOnStamp && id.checkingId == false) {
      if (mouseDownLeft && !mouseDownRight) {
        stamp.decisionMade = true;
        currentGuy.passed = true;
        stamp.approved = true;
      }
      if (mouseDownRight && !mouseDownLeft) {
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

      if  (currentGuy.position.x < 0 || currentGuy.position.x > width) {
        customersHelped ++;

        if (currentGuy.passed && currentGuy.age >= 18 || !currentGuy.passed && currentGuy.age < 18) {
          reset();
          guys.remove(i);
        } else if (!currentGuy.passed && currentGuy.age >= 18 ) {
          mistakes ++;
          if (mistakes < 3) {
            reset();
            guys.remove(i);
          } else gameOver = true;
        } else if (currentGuy.passed && currentGuy.age < 17 || currentGuy.passed && badFace)
          gameOver = true;
      }
    } else if (!stamp.decisionMade) {
      if (currentGuy.position.x < width/2 - 25)
        currentGuy.update(true);
    }
  }
}
