int xl;
int xr;
int y;
int circleCenterX;
int circleCenterY;

void setup() {
  size (600, 700);
}


void draw() {
  background(255);
  stroke(0);
  fill(200);

  circleCenterX=width/2;
  circleCenterY=height/2;
  xr=width-circleCenterX/8*3;
  xl=circleCenterX-circleCenterX/8*7;
  y=circleCenterY-circleCenterY/8;

  line(0, 0, width, height);
  line(width, 0, 0, height);

  ellipse(circleCenterX, circleCenterY, width/2, height/2);

  rect(xl, y, xl+xl, xl+xl);
  rect(xr, y, xl+xl, xl+xl);
  println(y);
}
