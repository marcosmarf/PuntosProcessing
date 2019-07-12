int px, py;
ArrayList<punto> puntos;

void setup() {
  size(720, 576, P3D);
  smooth(2);
  puntos= new ArrayList<punto>();
  for (int i=width/10; i<width; i+=width/10) {
    for (int j=height/10; j<height; j+=height/10) {
      punto p = new punto(i, j);
      puntos.add(p);
    }
  }
}

void draw() {
  background(0);
  for(int i=0; i<puntos.size(); i++){
    punto p = puntos.get(i);
    p.draw();
  }
}
