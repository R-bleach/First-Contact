void spawnGuy() {
  if ( goodGuys.size() < 1 && badGuys.size() < 1) {
    float GuySpawn = random(0, 1);

    if (GuySpawn <= 0.2) {
      ageNumber = (int)random(18, 100);
      badFace = false;
      goodGuys.add(new Customer(ageNumber));
    }

    if (GuySpawn >= 0.3) {
      ageNumber = (int)random(0, 100);
      if (ageNumber >= 17) {
        badFace = true;
        badGuys.add(new Customer(ageNumber));
      } else if (ageNumber <=17) {
        badFace = false;
        badGuys.add(new Customer(ageNumber));
      }
    }
  }
}
