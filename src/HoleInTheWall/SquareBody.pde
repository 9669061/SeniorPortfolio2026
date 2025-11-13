// CJ Greer | 11/3/2025 | Square Body
class SquareBody {
  // member variable
  int x, y, w, h, speed;
  color c1;
  float yVel;
  float gravity;
  float jumpStrength;
  boolean isOnGround;
  // PVector pv1;

  // constructor
  SquareBody(int x, int y, color c1) {
    this.x = x;
    this.y = y;
    w = 50;
    h = 50;
    speed = 5;
    this.c1 = 255;
    yVel = 0;
    gravity = 0.5;
    jumpStrength = 7.5;
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
