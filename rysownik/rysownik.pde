int r, g, b, p, r1, g1, b1;


void setup() {
  size(900, 900);

  r = 255;
  g = 255;
  b = 255;
  
  r1 = 0;
  g1 = 0;
  b1 = 0;
  
  p = 10;
  
  background(r, g, b);
}

void draw() {
  
  stroke(0);
  fill(255, 0, 0);
rect(20, 20, 20, 20);
fill(0, 255, 0);
rect(60, 20, 20, 20);
fill(0, 0, 255);
rect(100, 20, 20, 20);
fill(0);
rect(140, 20, 20, 20);

  noStroke();
  fill(r1, g1, b1);
  
 if (mouseX > 20 && mouseX < 40 && mouseY > 20 && mouseY < 40 && mousePressed && mouseButton == LEFT){
  r1 = 255;
  g1 = 0;
  b1 = 0;
}
   if (mouseX > 60 && mouseX < 80 && mouseY > 20 && mouseY < 40 && mousePressed && mouseButton == LEFT){
   r1 = 0;
  g1 = 255;
  b1 = 0;
}
 if (mouseX > 100 && mouseX < 120 && mouseY > 20 && mouseY < 40 && mousePressed && mouseButton == LEFT){
   r1 = 0;
  g1 = 0;
  b1 = 255;
}
   if (mouseX > 140 && mouseX < 160 && mouseY > 20 && mouseY < 40 && mousePressed && mouseButton == LEFT){
  r1 = 0;
  g1 = 0;
  b1 = 0;
}
  
if (keyPressed && key == 'q'){
 p = p+1; 
} else if (keyPressed && key == 'w' && p > 0) {
  p = p-1;
}



  if (mousePressed && mouseButton == LEFT) {
    ellipse(mouseX, mouseY, p, p);
  } else if (mousePressed && mouseButton == RIGHT) {
    fill(r, g, b);
    ellipse(mouseX, mouseY, p, p);
  }
  
  if(keyPressed && key == 'a'){
    setup();
  }
  
    if(keyPressed && key == 's'){
    save("export.png");
  }
  
  
}
