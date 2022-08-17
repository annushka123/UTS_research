float ballX = 0;
float ballY = 0;
float xspeed = 3;
float yspeed = 2.3;

void setup() {
  size(600, 600);
  
}

void draw() {
  background(51);
  loop();
  ellipse(ballX, ballY, 30, 30);
  
  ballX = ballX + xspeed;
  ballY = ballY + yspeed;

  if (ballX > width || ballX < 0) {
    xspeed = xspeed*-0.9;
  }
  if (ballY > height || ballY < 0) {
    yspeed = yspeed*-1;
  }
  
  noLoop();
  pushMatrix();
  float x;
  float y;

  for (x=50; x<width; x+=random(100, 300)) {
    for (y=50; y<height; y+=random(50, 300)) {

      
      star(x, y);
    }
  }
  popMatrix();
  
  
  


  
}

void star(float x, float y) {
  color fillColor=color(random(255), random(100), 40, 100);
  fill(fillColor);
  stroke(255);
  strokeWeight(2);

  beginShape();
  vertex(x, y-50);
  vertex(x+14, y-20);
  vertex(x+47, y-15);
  vertex(x+23, y+7);
  vertex(x+29, y+40);
  vertex(x, y+25);
  vertex(x-29, y+40);
  vertex(x-23, y+7);
  vertex(x-47, y-15);
  vertex(x-14, y-20);
  endShape(CLOSE);
}
