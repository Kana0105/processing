float x = 0.01;
float y = 0;
float z = 0;

float a = 10;
float b = 28;
float c = 8.0 / 3.0;

ArrayList<PVector> points = new ArrayList<PVector>();

void setup(){
  size(800, 600, P3D);
  colorMode(HSB);
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
  translate(width/2, height/2);
  scale(5);
  
  stroke(225);
  noFill();

  beginShape();
  for( PVector v : points){
    stroke(255, 255, 255);
    vertex(v.x, v.y, v.z);
  }
  endShape();
  
  
  
}