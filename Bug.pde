

class Bug {
  
  float y, x;
  float yspeed, xspeed;
  float speed = 1;
  int inventorySize = 1;
  int inventory = 0;
  
  Bug (float xpos, float ypos){
    this.x = xpos;
    this.y = ypos;
  }
  
  void move (float xspeed, float yspeed){
    this.x += xspeed;
    this.y += yspeed;
    update();
  }
  
  void harvest(){
    inventory ++;
  }
  
  void deposit(){
   inventory --; 
  }
  
  void update (){
    fill(100,100,255);
    square(x,y, 10);
  }
  
}
