void spawnGuy() {
  if ( goodGuys.size() < 1 && badGuys.size() < 1) {
    float GuySpawn = random(0, 1);

    if (GuySpawn <= 0.2) {
      ageNumber = (int)random(18, 100);
      goodGuys.add(new Customer(ageNumber, false));
    }

    if (GuySpawn >= 0.3) {
      ageNumber = (int)random(0, 100);
      if (ageNumber >= 17) {
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
