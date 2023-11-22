void doGameOver() {
  textSize(40);
  fill(0);
  for (Customer goodGuy : goodGuys) {
    if (gameOver == true && mistakes > 3) {
      if (second()%2==0) text ("YOU'RE FIRED !!", width/2 - textWidth("YOU'RE FIRED !!!")/2, height/2 - 15);
    }
    if (gameOver == true && goodGuy.passed) {
      if (second()%2==0) text ("CONGRATS", width/2 - textWidth("CONGRATS")/2, height/2 - 15);
    }
  }
  for (Customer badGuy : badGuys) {
    if (gameOver == true && badGuy.passed) {
      if (second()%2==0) text ("YOU'RE FIRED !!", width/2 - textWidth("YOU'RE FIRED !!")/2, height/2 - 15);
    }
    if (gameOver == true && !badGuy.passed) {
      if (second()%2==0) text ("CONGRATS", width/2 - textWidth("CONGRATS")/2, height/2 - 15);
    }
  }
}
