// CJ Greer | 18 Sept 2025 | SpaceGame
Spaceship s1;
ArrayList<Powerup> powups = new ArrayList<Powerup>();
ArrayList<Rock> rocks = new ArrayList<Rock>();
ArrayList<Laser> lasers = new ArrayList<Laser>();
ArrayList<Star> stars = new ArrayList<Star>();
Timer rockTimer, puTimer, levelTimer, starTimer;
PImage startscreen, gameover;
int score, rocksPassed, level, rtime;
boolean play;

void setup() {
  size(500, 500);
  rtime = 2000;
  background(22);
  s1 = new Spaceship();
  levelTimer = new Timer(30000);
  starTimer = new Timer(30);
  levelTimer.start();
  puTimer = new Timer(8000);
  puTimer.start();
  rockTimer = new Timer(rtime);
  rockTimer.start();
  score = 0;
  rocksPassed = 0;
  play = false;
  startscreen = loadImage("starscreen1.png");
  gameover = loadImage("gameover.png");
  level = 1;
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    background(22);
    // Check Levels
    if (level == 1) {
      // Decrease rockTimer ??
    }
    if (starTimer.isFinished()) {
      stars.add(new Star());
      starTimer.start();
    }
    // Distributes a powerup on a timer
    if (puTimer.isFinished()) {
      powups.add(new Powerup());
      puTimer.start();
    }
  for (int i = 0; i < stars.size(); i++) {
      Star str = stars.get(i);
      str.move();
      str.display();
       if (str.reachedBottom()) {
        stars.remove(str);
        i--;
      }
  }
    // Display and moves all powerups
    for (int i = 0; i < powups.size(); i++) {
      Powerup pu = powups.get(i);
      pu.move();
      pu.display();

      if (pu.intersect(s1)) {
        // Remove Powerup
        powups.remove(pu);
        // Based on type, benefit player
        if (pu.type == 'H') {
          s1.health+=25;
          // Turret Increase
        } else if (pu.type == 'T') {
          s1.turretCount+=1;
          if (s1.turretCount>5) {
            s1.turretCount = 5;
          }
          // Ammo increase
        } else if (pu.type == 'A') {
          s1.laserCount+=25;
        }
      }

      if (pu.reachedBottom()) {
        powups.remove(pu);
        i--;
      }
      println(powups.size());
    }

    // Distributes a rock on a timer
    if (rockTimer.isFinished()) {
      rocks.add(new Rock());
      rockTimer.start();
    }

    // Display and moves all rocks
    for (int i = 0; i < rocks.size(); i++) {
      Rock rock = rocks.get(i);
      rock.move();
      rock.display();

      if (s1.intersect(rock)) {
        rocks.remove(rock);
        score-=rock.w;
        s1.health-=rock.w;
      }

      if (rock.reachedBottom()) {
        rocks.remove(rock);
        rocksPassed += 1;
        i--;
      }
      println(rocks.size());
    }

    // Display and move lasers
    for (int i = 0; i < lasers.size(); i++) {
      Laser laser = lasers.get(i);
      for (int j = 0; j<rocks.size(); j++) {
        Rock r = rocks.get(j);
        if (laser.intersect(r)) {

          //2. eradicate laser
          lasers.remove(laser);
          // 3. rocks should have health based on size
          r.w -= 5;
          // 4. laser does less hp if rock is bigger
          if (r.w<5) {
            rocks.remove(r);
          }
          score+=r.w;
          // 5. laser will do less damage if spammed
          // 6. tapeworm takes over!!!!!!
          // 7. points go towards spaceship DEPENDING on size of rock destroyed w/ laser
        }
      }
      laser.display();
      laser.move();
    }

    s1.display();
    s1.move(mouseX, mouseY);
    infoPanel();


    // Level advance
    if (level<level+1) {
      if (rocksPassed>10*level) {
        level+=1;
        rtime-=10*level;
      }
    }

    // Game over criteria
    if (s1.health<1) {
      gameOver();
    }
  }
}

void mousePressed() {
  // laser.play();
  if (s1.turretCount == 1) {
    lasers.add(new Laser(s1.x, s1.y));
  } else if (s1.turretCount == 2) {
    lasers.add(new Laser(s1.x-15, s1.y));
    lasers.add(new Laser(s1.x+15, s1.y));
  } else if (s1.turretCount == 3) {
    lasers.add(new Laser(s1.x, s1.y+15));
    lasers.add(new Laser(s1.x-15, s1.y));
    lasers.add(new Laser(s1.x+15, s1.y));
  } else if (s1.turretCount == 4) {
    lasers.add(new Laser(s1.x-15, s1.y));
    lasers.add(new Laser(s1.x+15, s1.y));
    lasers.add(new Laser(s1.x, s1.y+15));
    lasers.add(new Laser(s1.x, s1.y-15));
  } else {
    lasers.add(new Laser(s1.x, s1.y-15));
    lasers.add(new Laser(s1.x-15, s1.y));
    lasers.add(new Laser(s1.x+15, s1.y));
    lasers.add(new Laser(s1.x+15, s1.y-30));
    lasers.add(new Laser(s1.x-15, s1.y-30));
  }
}

void infoPanel() {
  rectMode(CENTER);
  fill(127, 127);
  rect(width/2, 475, width, 50);
  fill(220);
  textSize(25);
  text("Score: " + score, 70, 475);
  text("Health: " + s1.health, 200, 475);
  text("Passed Rocks: " + rocksPassed, 200, 40);
  text("Turrets: " + s1.turretCount, width-170, 475);
  fill(255);
  text("Level: " + level, width-100, 40);
}

void startScreen() {
  imageMode(CENTER);
  image(startscreen,height/2,width/2);
  //background(0);
  fill(255);
  if (mousePressed) {
    play = true;
  }
}

void gameOver() {
  imageMode(CENTER);
  image(gameover,height/2,width/2);
  noLoop();
}
