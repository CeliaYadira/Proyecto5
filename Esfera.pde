class Esfera {
  float x = random(width/1.04);  
  float r = 5; 
  float y = -r*2;
  float yvel= random(1,3);
  float velocidad = random(2,10);    


  void caer() {
    y = y+velocidad;
    velocidad = velocidad + 0.0005;
  }


  void display() {
    for (int i = 0; i < 10; i++ ) {
      image(img3,x,y);
    }
  }

  void atrapar() {
    velocidad = 0; 
    y = -9000; //Sacar de la pantalla
  }
}
