float t0;
float T;

void setup() {
  size (512, 512);
  T = 5;
  t0 = millis()/ 1000;
}

void draw() {
  background(125);
  float t = millis() / 1000.0;
  float a = 50;
  float b = 400;
  
  float x = Step(a, b, (t - t0)/T);
  noFill();
  circle(a, 50, 30);
  circle(b, 50, 30);
  fill(255);
  circle(x, 50, 30);
  
  x = Linear(a, b, (t - t0)/T);
  noFill();
  circle(a, 100, 30);
  circle(b, 100, 30);
  fill(255);
  circle(x, 100, 30);
  
  x = Cosine(a, b, (t - t0)/T);
  noFill();
  circle(a, 150, 30);
  circle(b, 150, 30);
  fill(255);
  circle(x, 150, 30);
  
  x = SmoothStep(a, b, (t - t0)/T);
  noFill();
  circle(a, 200, 30);
  circle(b, 200, 30);
  fill(255);
  circle(x, 200, 30);
  
  x = Acceleration(a, b, (t - t0)/T);
  noFill();
  circle(a, 250, 30);
  circle(b, 250, 30);
  fill(255);
  circle(x, 250, 30);
  
  x = Desacceleration(a, b, (t - t0)/T);
  noFill();
  circle(a, 300, 30);
  circle(b, 300, 30);
  fill(255);
  circle(x, 300, 30);
}
