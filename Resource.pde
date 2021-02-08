
class Resource {
  float x;
  float y;
  int health;
  
  Resource (float x, float y, int health){
    this.x = x;
    this.y = y;
    this.health = health;
  }
  
  void spawn() {
    fill(150,255,150);
    int size = health*3;
    if (size <= 5){
      size = 5;
    }
    triangle(x,y +size/2, x+size/2,y-size/2, x-size/2, y-size/2);
  }
}
