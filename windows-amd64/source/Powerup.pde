class Powerup {
  // Member Variables
  int x, y, w, speed;
  char type;
  color c1;
  //PImage r1;

  // Constructor
  Powerup() {
    x = int(random(width));
    y = -100;
    w = 25;
    speed = 1;
    if (random(10)>7) {
      //r1 = loadImage("rock03.png");
      type = 'H';
      c1 = color(20, 255, 22);
    } else if (random(10)>5) {
      type = 'T';
      c1 = color(234, 33, 22);
      //r1 = loadImage("rock02.png");
    } else {
      //r1 = loadImage("rock01.png");
      type = 'A';
      c1 = color(20, 22, 222);
    }
  }

  // Member Methods
  void display() {
    fill (c1);
    rect(x,y,w,w);
    fill(255);
    textSize(12);
    textAlign(CENTER);
    text(type,x,y);
    //imageMode(CENTER);
    //if (w<1) {
    //  w=10;
    //}
    //r1.resize(w, w);
    //image(r1, x, y);
  }

  void move() {
    y = y + speed;
  }

  boolean reachedBottom() {
    if (y>height+w) {
      return true;
    } else {
      return false;
    }
  }
  boolean intersect(Spaceship s) {
    float d = dist(x, y, s.x, s.y);
    if (d<50) {
      return true;
    } else {
      return false;
    }
  }
}
