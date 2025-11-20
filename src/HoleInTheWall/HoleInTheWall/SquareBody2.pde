// CJ Greer | 11/3/2025 | Square Body
class SquareBody2 {
  // member variable
  int x, y, w, h, speed, js;
  color c1;
  float yVel;
  float gravity;
  float jumpStrength;
  boolean isOnGround, falling;
  // PVector pv1;

  // constructor
  SquareBody2(int x, int y, color c1) {
    this.x = x;
    this.y = y;
    w = 50;
    h = 50;
    speed = 5;
    this.c1 = 123;
    yVel = 0;
    gravity = 0.5;
    js = 7;
    jumpStrength = 7;
    isOnGround = true;
  }
  // member methods
  void display() {
    fill(0, 0, c1);
    rectMode(CENTER);
    rect(x, y, w, h);
  }
  void update() {
    yVel -= gravity;
    h += yVel;
    w += yVel;
    int groundLevel = 50;
    if (h+w<groundLevel*2) {
      h = groundLevel;
      w = groundLevel;
      yVel = 0;
      isOnGround = true;
    } else {
      isOnGround = false;
    }
    if (falling == true) {
      h -= 50;
      w -= 50;
    }
    if (y >= 775) {
      isOnGround = false;
      falling = true;
    }
    if (y <= 225) {
      isOnGround = false;
      falling = true;
    }
    if (x >= 775) {
      isOnGround = false;
      falling = true;
    }
    if (x <= 225) {
      isOnGround = false;
      falling = true;
    }
  }

  void jump() {
    if (isOnGround) {
      yVel = jumpStrength;
      isOnGround = false;
    }
  }
  void moveLeft() {
    if (isOnGround == true) {
      x = x-10;
    }
  }
  void moveRight() {
    if (isOnGround == true) {
      x = x+10;
    }
  }
  void moveUp() {
    if (isOnGround == true) {
      y = y-10;
    }
  }
  void moveDown() {
    if (isOnGround == true) {
      y = y+10;
    }
  }
}
