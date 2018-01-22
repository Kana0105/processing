float x = 0;
float y = -2;
float z = 0;

float a = 10;
float b = 28;
float c = 8.0 / 3.0;

int angle = 0;

ArrayList<PVector> points = new ArrayList<PVector>();

void setup(){
  size(1000, 800, P3D);
  frameRate(300);
}

void draw(){
  background(0);
  float dt = 0.01;
  float dx = (a * (y - x)) * dt;
  float dy = (x * (b - z) - y)*dt;
  //float dy = (b * x - y - x * z) * dt;
  float dz = (x * y - c * z) * dt;
  x = x + dx;
  y = y + dy;
  z = z + dz;
  
  points.add(new PVector(x, y, z));  

  
  //translate(0, -150, -80);
  translate(width/2, height/2+70);
  scale(4.7);
  
  stroke(255);
  strokeWeight(0.8);
  noFill();

  beginShape();
  for( PVector v : points){
    stroke(30, 255, 255);
    vertex(v.x, v.y, v.z);
    //rotateY(radians(0.04));
    //rect(0, 0, width/2, height/2);
  }
  endShape();
  
  translate(0,-10, 30);
  stroke(255, 255, 255);
  box(70);
  
  
  
}