float x1 = 0.0;
float y1 = 2.0;
float z1 = 0.0;

float x2 = 0.0;
float y2 = 2.01;
float z2 = 0.0;

float a = 10;
float b = 28;
float c = 8.0 / 3.0;

int angle;

ArrayList<PVector> points1 = new ArrayList<PVector>();
ArrayList<PVector> points2 = new ArrayList<PVector>();


void setup(){
  size(1000, 800, P3D);
  angle = 0;
  frameRate(50);
}

void draw(){

  
  
  background(0);
  float dt = 0.01;
  float dx1 = (a * (y1 - x1)) * dt;
  float dy1 = (x1 * (b - z1) - y1)*dt;
  //float dy = (b * x - y - x * z) * dt;
  float dz1 = (x1 * y1 - c * z1) * dt;
  x1 = x1 + dx1;
  y1 = y1 + dy1;
  z1 = z1 + dz1;
  
  
  float dx2 = (a * (y2 - x2)) * dt;
  float dy2 = (x2 * (b - z2) - y2)*dt;
  float dz2 = (x2 * y2 - c * z2) * dt;
  x2 = x2 + dx2;
  y2 = y2 + dy2;
  z2 = z2 + dz2;
  
  
  
  points1.add(new PVector(x1, y1, z1));
  points2.add(new PVector(x2, y2, z2));
  
  translate(width/2, height/2+70);
  //if(300 <frameCount && frameCount< 1020) angle += 1;
  //if(angle > 360) angle = 0;
  rotateY(radians(angle));
  //rotateZ(radians(20));
  
  
  scale(6);
  stroke(225);
  strokeWeight(0.8);
  noFill();

  beginShape();
  for( PVector v : points1){
    stroke(30, 255, 255);
    vertex(v.x, v.y, v.z);
  }
  endShape();
  beginShape();
  for( PVector v : points2){
    stroke(248, 181, 0);
    vertex(v.x, v.y, v.z);
  }
  endShape();
  
  translate(0,-10, 30);
  stroke(255, 255, 255);
  box(60);
  
  
  
}