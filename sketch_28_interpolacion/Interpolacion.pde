// a - valor inicial
// b - valor final
// t - tiempo [0, 1]
float Step (float a, float b, float t) {
  if (t < 0.5) {
    return a;
  } else {
    return b;
  }
}

float Linear(float a, float b, float t) {
  if (t > 1.0) {
    return b;
  }
  
  return a + t * (b - a);
}

float Cosine(float a, float b, float t) {
  return Linear(a, b, - cos (PI*t)/2 + 0.5);
}

float SmoothStep(float a, float b, float t) {
  return Linear(a, b, t * t * (3-2*t));
}

float Acceleration(float a, float b, float t) {
  return Linear(a, b, t*t);
}

float Desacceleration(float a, float b, float t) {
  return Linear(a, b, 1 - (1-t)*(1-t));
}

PVector Step(PVector a, PVector b, float t) {
}

PVector Linear(PVector a, PVector b, float t) {
}

PVector Cosine(PVector a, PVector b, float t) {
}

PVector Acceleration(PVector a, PVector b, float t) {
}

PVector Desacceleration(PVector a, PVector b, float t) {
}
