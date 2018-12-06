//Libreria de processing

class Tiempo {

  int tiempo; 
  int tiempot;

  Tiempo(int tiempot_) {
    tiempot = tiempot_;
  }
  
    void start() {
    tiempo = millis();
  }

  boolean tiempoter() {
    int tiempotrans = millis()- tiempo;
    if (tiempotrans > tiempot) {
      return true;
    } else {
      return false;
    }
  }
}
