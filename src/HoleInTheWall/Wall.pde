class Wall {
  int x, y, w, h, speed, speed1, speed2, speed3, x1, y1, x2, y2, x3, y3, timer, timer1, timer2, timer3, wr, rando, timer01, timer11, timer21, timer31, time, wall, wall1, wall2, wall3;
  float wallTimer;
  int value = 0;

  Wall() {
    x = 150;
    y = 500;
    w = 40;
    h = 500;
    speed = 0;
    x1 = 500;
    x2 = 850;
    x3 = 500;
    y1 = 150;
    y2 = 500;
    y3 = 850;
    speed1 = 0;
    speed2 = 0;
    speed3 = 0;
    timer1 = 0;
    timer = 0;
    timer2 = 0;
    timer3 = 0;
    wr = 40;
    time = 60;
    wall = 0;
    wallTimer = 55;
  }

  void display() {
    noStroke();
    fill(255, 0, 0);
    rectMode(CENTER);
    rect(x, y, w, h);
  }
  void display2() {
    noStroke();
    fill(0, 255, 0);
    rectMode(CENTER);
    rect(x1, y1, h, w);
  }
  void display3() {
    noStroke();
    fill(0, 0, 255);
    rectMode(CENTER);
    rect(x2, y2, w, h);
  }
  void display4() {
    noStroke();
    fill(255, 255, 0);
    rectMode(CENTER);
    rect(x3, y3, h, w);
    fill(150);
  }
  void move1() {
    if (timer11>time) {
      timer11=0;
    }
    y1 = y1 + speed1;
    if (y1 < 222 && y1 > 218) {
      timer11++;
      speed1 = 0;
    }
    if (timer11>time && wall1 == 1) {
      y1 = 222;
      speed1 = 2;
      wall1 = 0;
    } else if (timer11>time && wall1 == 0) {
      y1 = 150;
      speed1 = 0;
    }
    if (y1 > 730) {
      speed1 = 0;
      timer1 = timer1+1;
      if (timer1>20) {
        timer1=0;
        y1 = 150;
      }
    }
  }
  void move2() {
    if (timer21>time) {
      timer21=0;
    }
    x2 = x2 - speed2;
    if (x2 > 778 && x2 < 782) {
      timer21++;
      speed2 = 0;
    }
    if (timer21>time && wall2 == 1) {
      x2 = 778;
      speed2 = 2;
      wall2 = 0;
    } else if (timer21>time && wall2 == 0) {
      x2 = 850;
      speed2 = 0;
    }
    if (x2 < 270) {
      speed2 = 0;
      timer2++;
      if (timer2>20) {
        timer2=0;
        x2 = 850;
      }
    }
  }
  void move3() {
    if (timer31>time) {
      timer31=0;
    }
    y3 = y3 - speed3;
    if (y3 > 778 && y3 < 782) {
      timer31++;
      speed3 = 0;
    }
    if (timer31>time && wall3 == 1) {
      y3 = 778;
      speed3 = 2;
      wall3 = 0;
    } else if (timer31>time && wall3 == 0) {
      y3 = 850;
      speed3 = 0;
    }
    if (y3 < 270) {
      speed3 = 0;
      timer3++;
      if (timer3>20) {
        timer3=0;
        y3 = 850;
      }
    }
  }
  void move() {
    if (timer01>time) {
      timer01=0;
    }
    x = x + speed;
    if (x < 222 && x > 218) {
      speed = 0;
      timer01 = timer01+1;
    }
    if (timer01>time && wall == 1) {
      x = 222;
      speed = 2;
      wall = 0;
    } else if (timer01>time && wall == 0) {
      x = 150;
      speed = 0;
    }


    if (x > 730) {
      speed = 0;
      timer = timer+1;
      if (timer>20) {
        timer=0;
        x = 150;
        y = 500;
      }
    }
    println(random(4));
    wallTimer = wallTimer+.1;
    if (wallTimer >= wr) {
      wallTimer = 0;
      speed = 2;
      speed1 = 2;
      speed2 = 2;
      speed3 = 2;
      if (random(4) > 3 && random(4)<=4) {
        wall = 1;
      } else if (random(4) > 2 && random(4)<=3) {
        wall1 = 1;
      } else if (random(4) > 1 && random(4)<=2) {
        wall2 = 1;
      } else {
        wall3 = 1;
      }
    }
    if (keyPressed) {
      if (key == '1') {
        if (value == 0) {
          speed = 2;
          speed1 = 2;
          speed2 = 2;
          speed3 = 2;
          wall = 1;
        } else {
          speed = 0;
          speed1 = 0;
          speed2 = 0;
          speed3 = 0;
          wall = 0;
        }
      }
    }
    if (keyPressed) {
      if (key == '2') {
        if (value == 0) {
          speed = 2;
          speed1 = 2;
          speed2 = 2;
          speed3 = 2;
          wall1 = 1;
        } else {
          speed = 0;
          speed1 = 0;
          speed2 = 0;
          speed3 = 0;
          wall1 = 0;
        }
      }
    }
    if (keyPressed) {
      if (key == '3') {
        if (value == 0) {
          speed = 2;
          speed1 = 2;
          speed2 = 2;
          speed3 = 2;
          wall2 = 1;
        } else {
          speed = 0;
          speed1 = 0;
          speed2 = 0;
          speed3 = 0;
          wall2 = 0;
          ;
        }
      }
    }
    if (keyPressed) {
      if (key == '4') {
        if (value == 0) {
          speed = 2;
          speed1 = 2;
          speed2 = 2;
          speed3 = 2;
          wall3 = 1;
        } else {
          speed = 0;
          speed1 = 0;
          speed2 = 0;
          speed3 = 0;
          wall3 = 0;
          ;
        }
      }
    }
  }

  boolean reachedSide() {
    if (x > width + 30 || y > height - 30 || x < -30 || y < -30) {
      return true;
    } else {
      return false;
    }
  }
}
