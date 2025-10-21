class Spaceship {
  // Member Variables
  int x, y, w, health, turretCount, laserCount;
  PImage ship;

  // Constructor
  Spaceship() {
    x = width/2;
    y = height/2;
    w = 100;
    health = 100;
    turretCount = 1;
    laserCount = 100;
    ship = loadImage("spaceship.png");
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    image(ship, x, y);
  }
  void move(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void fire() {
  }
   boolean intersect(Rock r) {
    float d = dist(x, y, r.x, r.y);
    if (d<50) {
      return true;
    } else {
      return false;
    }
  }
}
