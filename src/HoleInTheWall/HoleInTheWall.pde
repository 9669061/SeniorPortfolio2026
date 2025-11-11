// CJ Greer | 10/30/2025 | Hole in the Wall
SquareBody s1;

void setup() {
  size(1000, 1000);
  s1 = new SquareBody(width/2, height/2, color(0, 0, 255));
}
void draw() {
  background(127);
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
