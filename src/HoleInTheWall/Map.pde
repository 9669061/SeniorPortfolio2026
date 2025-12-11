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
    fill(150, 150, 150);
    rectMode(CENTER);
    rect(x, y, w, h);
    fill(150,150);
    rect(width/2,1000-25,1000,50);
    textAlign(LEFT);
    textSize(50);
    fill(0);
    text("Walls Passed: " + ww.wsc,0,1000-10);
  }
}
