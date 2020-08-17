//based on this site https://www.youtube.com/watch?v=98FkwaSMQ_k
int div = 400;//72
int mult = 2;

void setup(){
  size(500, 500);
  colorMode(HSB, 360, 100, 100, 100);
  background(0);
  noStroke();
}

void draw(){
  background(0);
 for(int i=0; i<div; i++){
   PVector pos = pointOnCircle(i, div);
   ellipse(pos.x, pos.y, 5, 5);
  }
  mult = (int)map(mouseX, 0, width, 2, 10);
  for(int i=0; i<div; i++){
    PVector pos = pointOnCircle(i, div);
    PVector pos2 = pointOnCircle(i*mult, div);
    stroke(map(i, 0, div, 0, 360), 100, 100);
    line(pos.x, pos.y, pos2.x, pos2.y);
  }
}

PVector pointOnCircle(int i, int div){
  PVector origin = new PVector(width/2, height/2);
  float r = height/3;
  PVector diff = PVector.fromAngle(TWO_PI*i/div).mult(r);
  return PVector.add(origin, diff);
}
