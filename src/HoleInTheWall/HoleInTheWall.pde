// CJ Greer | 10/28/2025 | Object Tester
SquareBody s1;
SquareBody2 s2;
Map mp;
boolean leftPress, upPress, downPress, rightPress, canJump, setup, gamerun;
PImage startScreen2;
int timeHeldW, timeHeldA, timeHeldS, timeHeldD, timeHeldUp, timeHeldLeft, timeHeldDown, timeHeldRight;
wall ww;
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
  startScreen2 = loadImage("startScreen3.png");
  ww = new wall();
}
void setupScreen() {
  background(0);
  textMode(CENTER);
  textSize(25);
  fill (255);
  text("setup scene (character picking and map selection) press space bar", 40, 500);
  if (keyCode == ' ') {
    gamerun = true;
  }
}
void startScreen() {
  imageMode(CENTER);
  image(startScreen2, height/2, width/2);
  if (mousePressed) {
    setup = true;
  }
}
void draw() {
  if (!gamerun) {
    if (!setup) {
      startScreen();
    } else {
      setupScreen();
    }
  } else {
    background(0);
    mp.display();
    ww.display();
    ww.display2();
    ww.display3();
    ww.display4();
    ww.move();
    ww.move1();
    ww.move2();
    ww.move3();
    s1.update();
    s1.display();
    s2.update();
    s2.display();
  }
}
void keyPressed() {
  if (keyCode == UP) {
    timeHeldUp = timeHeldUp + 2;
    s1.moveUp();
  }
  if (keyCode == LEFT) {
    timeHeldLeft = timeHeldLeft + 2;
    s1.moveLeft();
  }
  if (keyCode == RIGHT) {
    timeHeldRight = timeHeldRight + 2;
    s1.moveRight();
  }
  if (keyCode == DOWN) {
    timeHeldDown = timeHeldDown + 2;
    s1.moveDown();
  }
  if (keyCode == ' ') {
    s1.jump();
  }
  if (keyCode == 'W') {
    timeHeldW = timeHeldW + 2;
    s2.moveUp();
  }
  if (keyCode == 'A') {
    timeHeldA = timeHeldA + 2;
    s2.moveLeft();
  }
  if (keyCode == 'D') {
    timeHeldD = timeHeldD + 2;
    s2.moveRight();
  }
  if (keyCode == 'S') {
    timeHeldS = timeHeldS + 2;
    s2.moveDown();
  }
  if (keyCode == ' ') {
    s2.jump();
  }
}
void keyReleased() {
  if (keyCode == UP) {
    timeHeldUp = 0;
  }
  if (keyCode == LEFT) {
    timeHeldLeft = 0;
  }
  if (keyCode == RIGHT) {
    timeHeldRight = 0;
  }
  if (keyCode == DOWN) {
    timeHeldDown = 0;
  }
  if (keyCode == 'W') {
    timeHeldW = 0;
  }
  if (keyCode == 'A') {
    timeHeldA = 0;
  }
  if (keyCode == 'D') {
    timeHeldD = 0;
  }
  if (keyCode == 'S') {
    timeHeldS = 0;
  }
}
