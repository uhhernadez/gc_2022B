DrSimi drSimi;

void setup () {
  size(512, 512);
  drSimi = new DrSimi();
}

void draw () {
  background(0);
  for(int m = 0; m < 10; m++) {
    for(int n = 0; n < 10; n++) {
      
      pushMatrix();
        translate (m*50, n*100);
        scale(0.2);
        drSimi.Dibujar();
      popMatrix();
    }
  }
}
