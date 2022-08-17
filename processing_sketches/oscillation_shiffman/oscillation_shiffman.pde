float theta = 0.0;

void setup(){
  size(200,200);
}

void draw(){
  background(255);
  
  //float x = map(sin(theta), -1, 1, 0, 200);
  
  theta += 0.05;
  
  fill(0);
  stroke(0);
  
  float x = theta;
  for(int i = 0; i <=20; i++) {
    
    float y = map(sin(x), -1, 1, 0, height);
    
    ellipse(i*10, y, 16, 16);
    line(i*10, y, x, y+10);
    
     x += 0.2;
  }
 
}
  
