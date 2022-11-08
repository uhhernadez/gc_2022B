class Sprite {
  ArrayList<PImage> seq;
  float rate;
  float t_last;
  int n;
  float scale;
  
  Sprite(String path, int size, float _scale) {
    seq = new ArrayList<PImage>();
    for(int k=1; k <= size; k++) {
      PImage img =loadImage(path + k +".png");
      seq.add(img);
    }
    rate = 30;
    t_last = millis()/1000.0; // Segundos
    n = 0;
    scale = _scale;
  }

  void Draw() {
    float t = millis()/1000.0; // Segundos
    pushMatrix();
      scale(scale);
      pushMatrix();
        //translate(0, seq.get(n).height);
        image(seq.get(n), -seq.get(n).width/2, -seq.get(n).height/2 );
      popMatrix();
    popMatrix();
    
    if ((t - t_last) > 1/rate) {
      n = (n + 1) % seq.size();
      t_last = t;
    }
  }
}
