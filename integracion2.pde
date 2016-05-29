/*
 crear circulos como cantidad de asteroides hay
 variar diametros y velocidad de variación según datos

 ejemplo de datos
 "neo_reference_id" : "2154555",
 "name" : "154555 (2003 HA)",
 "estimated_diameter_min" : 1.332155667,
 "estimated_diameter_max" : 2.978790628 
 "relative_velocity" : {
 "kilometers_per_second" : "21.2540652107",
 */
//Asteroide asti;
ArrayList<Asteroide> asteroides;
boolean presencia = true;
int nAsti = 15;

void setup() {
  size(500, 500);
  //asti = new Asteroide(25, 45, 21.2);
  //asti = new Asteroide(1.33, 2.97, 21.2);
  asteroides = new ArrayList<Asteroide>();
}

void draw() {
  background(0);
  //asti.dibujar();
  if (presencia) {
    for (int i = 0; i < nAsti; i++) {
      Asteroide asti = new Asteroide();
      asteroides.add(asti);
      asti.inicializar( random(8,25), random(35,55), random(0.2, 0.5), int(random(256)), int(random(256)), int(random(256)), random(50,450), random(50,450));
      // _dMn, _dMx, _vel, _r, _g, _b, _x, _y
    }
    presencia = false;
  }
  for (int i = 0; i< asteroides.size(); i++) {
   Asteroide astiActual = asteroides.get(i);
   astiActual.dibujar();
  }


  //int(random(256)
}


void mousePressed() {
}
void mouseReleased() {
}