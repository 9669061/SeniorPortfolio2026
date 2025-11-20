// CJ Greer | 10/28/2025 | Object Tester
SquareBody s1;
SquareBody2 s2;
Map mp;
boolean leftPress, upPress, downPress, rightPress, canJump;

void setup() {
  size(1000, 1000);
  s1 = new SquareBody(width/2, height/2, color(255, 0, 255));
  s2 = new SquareBody2(width/2, height/2, color(255, 0, 255));
  mp = new Map(width/2, height/2, color(0, 255, 0));
  leftPress = false;
  upPress = false;
  downPress = false;
  rightPress = false;
  canJump = false;
}
void draw() {
  background(0);
  mp.display();
  s1.update();
  s1.display();
  s2.update();
  s2.display();
}
void keyPressed() {
  if (keyCode == UP) {
    s1.moveUp();
  }
  if (keyCode == LEFT) {
    s1.moveLeft();
  }
  if (keyCode == RIGHT) {
    s1.moveRight();
  }
  if (keyCode == DOWN) {
    s1.moveDown();
  }
    if (keyCode == ' ') {
    s1.jump();
  }
    if (keyCode == 'W') {
    s2.moveUp();
  }
  if (keyCode == 'A') {
    s2.moveLeft();
  }
  if (keyCode == 'D') {
    s2.moveRight();
  }
  if (keyCode == 'S') {
    s2.moveDown();
  }
    if (keyCode == ' ') {
    s2.jump();
  }
}
