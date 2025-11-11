// CJ Greer | 10/28/2025 | Object Tester
SquareBody s1;
Map mp;

void setup() {
  size(1000, 1000);
  s1 = new SquareBody(width/2, height/2, color(0, 0, 255));
  mp = new Map(width/2, height/2, color(0, 255, 0));
}
void draw() {
  background(0);
  mp.display();
  s1.update();
  s1.display();
}
void keyPressed() {
  if (key == ' ')
    s1.jump(); 
    else if (key == ' ')
    s1.jump(); 
    else if (key == ' ')
    s1.jump();
}
void mousePressed() {
  s1.jump();
}
