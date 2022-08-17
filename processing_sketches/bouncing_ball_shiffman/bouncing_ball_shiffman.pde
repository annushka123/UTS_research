float x = 0;
float y = 0;
float xspeed = 3;
float yspeed = 2.3;

void setup() {

  size(400, 400);
  
}

void draw() {

  background(51);
  fill(102);
  stroke(0);
  ellipse(x, y, 32, 32);

  x = x + xspeed;
  y = y + yspeed;

  if (x > width || x < 0) {
    xspeed = xspeed*-0.9;
  }
  if (y > height || y < 0) {
    yspeed = yspeed*-1;
  }
}
