class Map {
  // member variable
  int x, y, w, h, speed;
  color c1;
  
   // constructor
  Map(int x, int y, color c1) {
    this.x = x;
    this.y = y;
    w = 500;
    h = 500;
    this.c1 = c1;
  }
    // member methods
  void display() {
    fill(c1);
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
