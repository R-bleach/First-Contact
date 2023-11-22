void CheckGuys(ArrayList<Customer> guys) {
  for (int i = guys.size()-1; i >= 0; --i) {

    Customer currentGuy = guys.get(i);

    badFace = currentGuy.badFace;

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

      if  (currentGuy.position.x <= 0|| currentGuy.position.x > width) {
        if (!alreadyCounted) {
          customersHelped++;
          alreadyCounted = true;
        }

        if (currentGuy.passed && currentGuy.age >= 18 && !currentGuy.badFace || !currentGuy.passed && currentGuy.age < 18||!currentGuy.passed && currentGuy.badFace ) {
          reset();
          guys.remove(i);
          println(guys.size());
        }
        if (!currentGuy.passed && currentGuy.age >= 18 && !currentGuy.badFace) {
          mistakes ++;
          if (mistakes < 3) {
            reset();
            guys.remove(i);
            println(guys.size());
          } else gameOver = true;
        }
        if (currentGuy.passed && currentGuy.age < 18|| currentGuy.passed && currentGuy.badFace)
          gameOver = true;
      } else {
        alreadyCounted = false;
      }
    } else if (!stamp.decisionMade) {
      if (currentGuy.position.x < width/2 - 25)
        currentGuy.update(true);
    }
  }
}
