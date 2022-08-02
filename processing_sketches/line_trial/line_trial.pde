import netP5.*;
import oscP5.*;

OscP5 oscar;

//float thick = 1.0;
float x, y;

 //want thickness to change using incoming OSC message

void setup() {
  size(800, 800);
  oscar = new OscP5(this, 6002);
  oscar.plug(this, "setThick", "/amp");
  
}

public void setThick(float amp) {
  x = amp * 200.;
  y = amp * 2.5;
}
void draw() {
  background(255); 
  //int thick = 1;
  strokeWeight(4);
  line(0, 400, x, 400);
}
  

  
  
