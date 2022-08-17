
int controlX1=10;
int controlY1=350;
int anchorX1=150;
int anchorY1=10;
int controlX2=300;
int controlY2=550;
int anchorX2=200;
float anchorY2=550;


void setup() {
  size(600, 600);
  noFill();
  smooth();
  
}

void draw() {


background(255);
stroke(150, 100, 10);
bezier(10, 20, 10, 300, 400, 300, 400, 550);

stroke(10, 100, 10);
bezier(10, 350, 150, 10, 300, 550, 0, 260);



controlX1+=0.01;
controlY1+=0.01;
anchorX1+=0.01;
anchorY1+=0.01;
controlX2+=0.01;
controlY2+=0.01;
anchorX2+=0.01;
float anchorY2 = r*cos(theta);
bezier(controlX1, controlY1, anchorX1, anchorY1, controlX2, controlY2, anchorX2, anchorY2);

float x = r*cos(theta);
float y = r*sin(theta);

ellipse(x+width/2, y+height/2, 16, 16);


theta += 0.01;

float x2 = r2*cos(theta2);
float y2 = r2*sin(theta2);
ellipse(x2+width/2, y2+height/2, 16, 16);
theta2 += -0.01;

}
