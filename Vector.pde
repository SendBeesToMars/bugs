

class Vector {
  float vx;
  float vy;
  
  Vector (float x, float y){
    this.vx = x;
    this.vy = y;
    normalise();
  }
  
  void normalise(){
    float norm = sqrt(pow((vy),2) + pow((vx),2));
    vx /= norm;
    vy /= norm;
  }
  
  float checkNorm(){
     return sqrt(pow(vx,2) + pow(vy,2));
  }

}
