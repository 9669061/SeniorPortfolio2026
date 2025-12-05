// Made by Mars Gorham
class wall {
  int x, y, w, h, speed, speed1, speed2, speed3, x1, y1, x2, y2, x3, y3, timer, timer1, timer2, timer3, wr, rando, timer01, timer11, timer21, timer31, time, wall, wall1, wall2, wall3;
  int wmove, sSpeed, tspeed, wh, whpcd, whpcd1, whpcd2, whpcd3, wallCount;
  float wallTimer, wsc;
  int value = 0;

  // Constructor
  wall() {
    wsc = 0;
    wh = 100;
    whpcd = int(random(wh+30, 500-(wh+30)));
    whpcd1 = int(random(wh+30, 500-(wh+30)));
    whpcd2 = int(random(wh+30, 500-(wh+30)));
    whpcd3 = int(random(wh+30, 500-(wh+30)));
    x = 150;
    y = 500;
    w = 40;
    h = 500;
    speed = sSpeed;
    x1 = 500;
    x2 = 850;
    x3 = 500;
    y1 = 150;
    y2 = 500;
    y3 = 850;
    speed1 = sSpeed;
    speed2 = sSpeed;
    speed3 = sSpeed;
    timer1 = sSpeed;
    timer = 0;
    timer2 = 0;
    timer3 = 0;
    wr = 40;
    time = 60;
    wall = 0;
    wallTimer = 55;
    sSpeed = 2;
    wallCount = 1;
  }
  // Moves the player if the player is near wall
  void update() {
    if (s1.x>x && s1.x<x+45&&s1.y<=250+whpcd+24) {
      s1.x = x+45;
    }
    if (s1.x>x && s1.x<x+45&&s1.y>=726-(h-(whpcd+wh))) {
      s1.x = x+45;
    }
    if (s2.x>x && s2.x<x+45&&s2.y<=250+whpcd+24) {
      s2.x = x+45;
    }
    if (s2.x>x && s2.x<x+45&&s2.y>=726-(h-(whpcd+wh))) {
      s2.x = x+45;
    }
    if (s1.x<x2 && s1.x>x2-45&&s1.y<=250+whpcd2+24) {
      s1.x = x2-45;
    }
    if (s1.x<x2 && s1.x>x2-45&&s1.y>=726-(h-(whpcd2+wh))) {
      s1.x = x2-45;
    }
    if (s2.x<x2 && s2.x>x2-45&&s2.y<=250+whpcd2+24) {
      s2.x = x2-45;
    }
    if (s2.x<x2 && s2.x>x2-45&&s2.y>=726-(h-(whpcd2+wh))) {
      s2.x = x2-45;
    }
    if (s1.y>y1 && s1.y<y1+45&&s1.x<=250+whpcd1+24) {
      s1.y = y1+45;
    }
    if (s1.y>y1 && s1.y<y1+45&&s1.x>=726-(h-(whpcd1+wh))) {
      s1.y = y1+45;
    }
    if (s2.y>y1 && s2.y<y1+45&&s2.x<=250+whpcd1+24) {
      s2.y = y1+45;
    }
    if (s2.y>y1 && s2.y<y1+45&&s2.x>=726-(h-(whpcd1+wh))) {
      s2.y = y1+45;
    }
    if (s1.y<y3 && s1.y>y3-45&&s1.x<=250+whpcd3+24) {
      s1.y = y3-45;
    }
    if (s1.y<y3 && s1.y>y3-45&&s1.x>=726-(h-(whpcd3+wh))) {
      s1.y = y3-45;
    }
    if (s2.y<y3 && s2.y>y3-45&&s2.x<=250+whpcd3+24) {
      s2.y = y3-45;
    }
    if (s2.y<y3 && s2.y>y3-45&&s2.x>=726-(h-(whpcd3+wh))) {
      s2.y = y3-45;
    }
  }
  // makes the first wall
  void display() {
    noStroke();
    fill(100);
    rectMode(CORNER);
    rect(x-w/2, y-h/2, w, whpcd);
    rect(x-w/2, y-h/2+whpcd+wh, w, h-(whpcd+wh));
  }
  // makes second wall
  void display2() {
    noStroke();
    rectMode(CORNER);
    rect(x1-h/2, y1-w/2, whpcd1, w);
    rect(x1-h/2+whpcd1+wh, y1-w/2, h-(whpcd1+wh), w);
  }
  // makes third wall
  void display3() {
    noStroke();
    rectMode(CORNER);
    rect(x2-w/2, y2-h/2, w, whpcd2);
    rect(x2-w/2, y2-h/2+whpcd2+wh, w, h-(whpcd2+wh));
  }
  // makes fourth wall
  void display4() {
    noStroke();
    rectMode(CORNER);
    rect(x3-h/2, y3-w/2, whpcd3, w);
    rect(x3-h/2+whpcd3+wh, y3-w/2, h-(whpcd3+wh), w);
  }
  // moves the second wall
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
      speed1 = sSpeed;
      wall1 = 0;
    } else if (timer11>time && wall1 == 0) {
      y1 = 150;
      speed1 = 0;
    }
    // if the second wall is to the right y value move it back and increases the speed for all of them i just dont want to comment it
    if (y1 > 730) {
      speed1 = 0;
      timer1 = timer1+1;
      if (timer1>20) {
        timer1=0;
        y1 = 150;
        wsc = wsc+.1;
        if (wsc >= .9&&wsc<=1.5) {
          wallCount = 2;
        } else if (wsc >= 2.9&&wsc<=3.5) {
          sSpeed = 3;
        } else if (wsc >= 4.9) {
          wallCount = 3;
          sSpeed = 3;
        }
        whpcd1 = int(random(wh+30, 500-(wh+30)));
        if (wh>55) {
          wh = wh-2;
        }
      }
    }
  }
  // moves the third wall
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
      speed2 = sSpeed;
      wall2 = 0;
    } else if (timer21>time && wall2 == 0) {
      x2 = 850;
      speed2 = 0;
    }
    // if the third wall is to the right x value move it back
    if (x2 < 270) {
      speed2 = 0;
      timer2++;
      if (timer2>20) {
        timer2=0;
        x2 = 850;
        wsc = wsc+.1;
        if (wsc >= .9&&wsc<=1.5) {
          wallCount = 2;
        } else if (wsc >= 2.9&&wsc<=3.5) {
          sSpeed = 3;
        } else if (wsc >= 4.9) {
          wallCount = 3;
          sSpeed = 3;
        }
        whpcd2 = int(random(wh+30, 500-(wh+30)));
        if (wh>55) {
          wh = wh-5;
        }
      }
    }
  }
  //moves fourth wall
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
      speed3 = sSpeed;
      wall3 = 0;
    } else if (timer31>time && wall3 == 0) {
      y3 = 850;
      speed3 = 0;
    }
    //  if the fourth wall is to the right y value move it back
    if (y3 < 270) {
      speed3 = 0;
      timer3++;
      if (timer3>20) {
        timer3=0;
        y3 = 850;
        wsc = wsc+.1;
        if (wsc >= .9&&wsc<=1.5) {
          wallCount = 2;
        } else if (wsc >= 2.89&&wsc<=3.5) {
          sSpeed = 3;
        } else if (wsc >= 4.9) {
          wallCount = 3;
          sSpeed = 3;
        }
        whpcd3 = int(random(wh+30, 500-(wh+30)));
        if (wh>55) {
          wh = wh-5;
        }
      }
    }
  }
  // moves the first wall
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
      speed = sSpeed;
      wall = 0;
    } else if (timer01>time && wall == 0) {
      x = 150;
      speed = 0;
    }

    // if the first wall is to the right x value move it back
    if (x > 730) {
      speed = 0;
      timer = timer+1;
      if (timer>20) {
        timer=0;
        x = 150;
        y = 500;
        wsc = wsc+.1;
        if (wsc >= .9&&wsc<=1.5) {
          wallCount = 2;
        } else if (wsc >= 2.9&&wsc<=3.5) {
          sSpeed = 3;
        } else if (wsc >= 4.9) {
          wallCount = 3;
          sSpeed = 3;
        }
        whpcd = int(random(wh+30, 500-(wh+30)));
        if (wh>55) {
          wh = wh-5;
        }
      }
    }
    // makes the walls move at random
    wallTimer = wallTimer+.1;
    if (wallTimer >= wr) {
      wallTimer = 0;
      speed = sSpeed;
      speed1 = sSpeed;
      speed2 = sSpeed;
      speed3 = sSpeed;
      if (random(4) > 3 && random(4)<=4) {
        wall = 1;
      } else if (random(4) > 2 && random(4)<=3) {
        wall1 = 1;
      } else if (random(4) > 1 && random(4)<=2) {
        wall2 = 1;
      } else {
        wall3 = 1;
      }
      // if wall count is more than 1 then multiple walls will go
      if (wallCount>=2) {
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
      if (wallCount==3) {
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
    }

    // forces the walls to move by force
    if (keyPressed) {
      if (key == '1') {
        if (value == 0) {
          speed = sSpeed;
          speed1 = sSpeed;
          speed2 = sSpeed;
          speed3 = sSpeed;
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
          speed = sSpeed;
          speed1 = sSpeed;
          speed2 = sSpeed;
          speed3 = sSpeed;
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
          speed = sSpeed;
          speed1 = sSpeed;
          speed2 = sSpeed;
          speed3 = sSpeed;
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
          speed = sSpeed;
          speed1 = sSpeed;
          speed2 = sSpeed;
          speed3 = sSpeed;
          wall3 = 1;
        } else {
          speed = 0;
          speed1 = 0;
          speed2 = 0;
          speed3 = 0;
          wall3 = 0;
        }
      }
    }
  }
}
