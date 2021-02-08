
class Base {
  float x;
  float y;
  int resource = 123;
  
  Base (float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void buildBase(){
    fill(255,100,100);
    circle(x, y, 35);
    resources();
  }
  
  void resources(){
    textAlign(CENTER);
    for(int x = -1; x < 2; x++){
      fill(0);
      text(str(resource), width/2+x,height/2-20);
      text(str(resource), width/2,height/2-20+x);
    }
    fill(255);
    textSize(16);
    text(str(resource), width/2, height/2-20);
  }
}
