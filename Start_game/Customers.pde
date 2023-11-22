class Customer {
  boolean passed = false;
  PVector position;
  float speed = 5f;
  int age;
  boolean badFace = false;

  Customer(int pAge, boolean pBadFace ) {
    position = new PVector (0, 500);
    age = pAge;
    badFace = pBadFace;
  }

  void update(boolean toRight) {
    if (toRight)
      position.x += 5;
    else
      position.x -= 5;
  }

  void Draw() {
    fill(0);
    square(position.x, 300, 50);
  }
}
