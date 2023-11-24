void spawnGuy() {
  if ( goodGuys.size() < 1 && badGuys.size() < 1) {
    characterSelector = (int)random(1, 5);
    if(characterSelector == 3){
      ageNumber = (int)random(18, 100);
      goodGuys.add(new Customer(ageNumber, false));
    }
    else{
    float GuySpawn = random(0, 1);

    if (GuySpawn <= 0.6) {
      ageNumber = (int)random(18, 100);
      goodGuys.add(new Customer(ageNumber, false));
    }

    if (GuySpawn >= 0.4) {
      ageNumber = (int)random(17, 100);
      if (ageNumber > 17) {
        badGuys.add(new Customer(ageNumber, true));
        println("aaaa");
      }
      if (ageNumber <=17) {
        badGuys.add(new Customer(ageNumber, false));
        println("bbbbb");
      }
    }
    }
  }
}
