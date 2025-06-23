ArrayList<Disc> sparks1, sparks2, sparks3;

int x1, x2, x3;

void setup(){
  //size(600, 600);
  fullScreen();
 sparks1 = new ArrayList<Disc>();
 sparks2 = new ArrayList<Disc>();
 sparks3 = new ArrayList<Disc>();
 
 x1 = 0;
 x2 = width;
 x3 = width;

}

void draw(){
  background(0);
 
 sparks1.add(new Disc(new PVector(x1, 0.5*height)));
 sparks2.add(new Disc(new PVector(x2, 0.25*height)));
 sparks3.add(new Disc(new PVector(x3, 0.75*height)));
 
 for (int i = 0; i < sparks1.size(); i++){
   Disc d = sparks1.get(i);
   d.run();
   
   if (d.isAlive() == false){
     sparks1.remove(i);
   }
 }
  for (int i = 0; i < sparks2.size(); i++){
   Disc d = sparks2.get(i);
   d.run();
   
   if (d.isAlive() == false){
     sparks2.remove(i);
   }
 }
  for (int i = 0; i < sparks3.size(); i++){
   Disc d = sparks3.get(i);
   d.run();
   
   if (d.isAlive() == false){
     sparks3.remove(i);
   }
 }
  
  x1 = x1 + 1;
  x1 = (width+x1) % width;
  
  x2 = x2 - 1;
  x2 = (width+x2) % width;
  
  x3 = x3 - 1;
  x3 = (width+x3) % width;
  
  
}

class Disc{
  PVector location;
  PVector velocity;
  float life;
  
  Disc(PVector loc){
    location = loc;
    velocity = new PVector(random(-6, 6), random(-6, 6));
    life = 255.0;
  }
  
  void display(){
    
    stroke((life/255)*mouseX, (life/255)*mouseY, (life/255)*200);
   fill((life/255)*mouseX, (life/255)*mouseY, (life/255)*200);
    ellipse(location.x, location.y, 6, 6);
    
  }
  
  void update(){
    location.add(velocity);
    life = life -5;
  }
  
  void run(){
    update();
    display();
     
  }
  
  boolean isAlive(){
    if(life < 0){
      return false;
      
    } else {
      return true;
    }
    
  }
  
  
}
