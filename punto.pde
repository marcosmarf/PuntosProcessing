class punto {
  int x, y, g;
  boolean cae;
  punto() {
    x=0;
    y=0;
    g = int(random(1, 10));
    cae=false;
  }

  punto(int xx, int yy) {
    x=xx;
    y=yy;
    g = int(random(1, 10));
    cae=false;
  }

  void draw() {
    fill(255, 255, 255);
    ellipse(x, y, 6, 6);
    if (cae) {
      y=y+g;
    }
    if (dist(mouseX, mouseY, x, y)<30) {
      println("caigo");
      cae=true;
    }
    if (y>height) {
      puntos.remove(this);
      println("borrado");
    }
  }
}
