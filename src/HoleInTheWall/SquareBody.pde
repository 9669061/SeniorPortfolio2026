// CJ Greer | 11/3/2025 | Square Body
class SquareBody {
  // member variable
  int x, y, w, h, speed, js;
  color c1;
  float yVel;
  float gravity;
  float jumpStrength;
  boolean isOnGround, falling;
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
    if (x>ww.x && x<ww.x+45&&y<=250+ww.whpcd+24) {
      s1.x = ww.x+45;
    }
    if (x>ww.x && x<ww.x+45&&y>=726-(ww.h-(ww.whpcd+ww.wh))) {
      x = ww.x+45;
    }
    if (s1.x<ww.x2 && s1.x>ww.x2-45&&s1.y<=250+ww.whpcd2+24) {
      s1.x = ww.x2-45;
    }
    if (s1.x<ww.x2 && s1.x>ww.x2-45&&s1.y>=726-(ww.h-(ww.whpcd2+ww.wh))) {
      s1.x = ww.x2-45;
    }
    if (s1.y>ww.y1 && s1.y<ww.y1+45&&s1.x<=250+ww.whpcd1+24) {
      s1.y = ww.y1+45;
    }
    if (s1.y>ww.y1 && s1.y<ww.y1+45&&s1.x>=726-(ww.h-(ww.whpcd1+ww.wh))) {
      s1.y = ww.y1+45;
    }
    if (s1.y<ww.y3 && s1.y>ww.y3-45&&s1.x<=250+ww.whpcd3+24) {
      s1.y = ww.y3-45;
    }
    if (s1.y<ww.y3 && s1.y>ww.y3-45&&s1.x>=726-(ww.h-(ww.whpcd3+ww.wh))) {
      s1.y = ww.y3-45;
    }
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
      x = x-timeHeldLeft;
    }
  }
  void moveRight() {
    if (isOnGround == true) {
      x = x+timeHeldRight;
    }
  }
  void moveUp() {
    if (isOnGround == true) {
      y = y-timeHeldUp;
    }
  }
  void moveDown() {
    if (isOnGround == true) {
      y = y+timeHeldDown;
    }
  }
}
