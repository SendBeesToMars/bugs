
Bug bug1 = new Bug(320, 180);
Resource resource = new Resource(40, 120, 3);
Base base = new Base(320, 180);


void setup() {
  size(640, 360);
  rectMode(CENTER);
}

void draw() {
  background(100);
  base.buildBase();
  if (resource.health > 0){
    resource.spawn();
    // moves to resource and fill up inventory
    if (distance(bug1,resource.x, resource.y) >= resource.health && bug1.inventory != bug1.inventorySize){
      Vector vecNode = new Vector(resource.x-bug1.x, resource.y-bug1.y);
      bug1.move(vecNode.vx, vecNode.vy);
    }
    // return to base with full inventory
    else if (distance(bug1, base.x, base.y) >= 6 && bug1.inventory == bug1.inventorySize){
      Vector vecBase = new Vector(base.x-bug1.x, base.y-bug1.y);
      bug1.move(vecBase.vx, vecBase.vy);
    }
    else {
      bug1.update();
      if (bug1.inventory != bug1.inventorySize){
         bug1.harvest();
         resource.health --;
      }
      else if (bug1.inventory != 0){
        bug1.deposit();
      }
    }
  }else{
     resource = new Resource(random(20,width-20), random(20,height-20), int(random(5)));
  }
}

float distance(Bug bug, float x, float y){
  return sqrt(abs(bug.x-x) + abs(bug.y-y));
}
