ArrayList<Base> obra;
Base base;

void setup () {
  size(512, 512);
  base = new Base(0, 0, 512);
  obra = new ArrayList<Base>();
  for (int m = 0; m < 8; m++) {
    for (int n = 0; n < 8; n++) {
      obra.add(new Base(m*64, n*64, 64));
    }
  }
}

void draw () {
  for(Base b: obra) {
    b.Dibujar();
  }
}
