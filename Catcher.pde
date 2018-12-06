class Catcher {   
  float x; 
  float y;
  float r;

  Catcher(float r_) {
    r = r_;
  }

  void Localizacion(float x_, float y_) {
    x = x_;
    y = y_;
  }

  boolean choque(Esfera e) {
    float distance = dist(x, y, e.x, e.y); 

    if (distance < r + e.r) { 
      return true;
    } else {
      return false;
    }
  }
}
