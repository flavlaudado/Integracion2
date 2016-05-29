class Asteroide {

  //variables
  float dMn, dMx;
  float d;
  float x = 0;
  float y = 0;
  float vel;
  boolean crecer = true;
  int r, g, b;

  Asteroide() {
  }

  void inicializar(float _dMn, float _dMx, float _vel, int _r, int _g, int _b, float _x, float _y) {
    dMn = _dMn;
    dMx = _dMx;
    vel = _vel;
    d = dMn;
    r = _r;
    g = _g;
    b = _b;
    x = _x;
    y = _y;
  }

  void dibujar() {
    noStroke();
    fill(r, g, b);
    diam();
    ellipse(x, y, d, d);
  }
  void setColor() {
    r = int(random(256)); 
    g = int(random(256)); 
    b = int(random(256));
  }

  void diam() {
    if (crecer) {
      d += vel;
      if (d > dMx) {
        crecer = false;
      }
    } else {
      d -= vel; 
      if (d < dMn) {
        crecer = true;
      }
    }
  }
}