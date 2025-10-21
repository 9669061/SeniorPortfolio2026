class Laser {
  // Member Variables
  int x, y, w, h;
  //PImage ship;

  // Constructor
  Laser(int x, int y) {
    this.x = x;
    this.y = y;
    w = 15;
    h = 30;
  }

  // Member Methods
  void display() {
    //image(ship,x,y);
    stroke(222);
    strokeWeight(3);
    rectMode(CENTER);
    rect(x, y, 2, 10);
  }

  void move() {
    y = y-10;
  }

  void fire() {
  }

  boolean reachedTop() {
    if (y<-10) {
      return true;
    } else {
      return false;
    }
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
