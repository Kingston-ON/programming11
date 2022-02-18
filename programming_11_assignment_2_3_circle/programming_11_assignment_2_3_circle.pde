int y;

void setup() {
  size(600,600);
  y=0;
  strokeWeight(5);
}

void draw(){
  background(255);
  ellipse(300,300,y,y);
  y=y+1;
  if(y>850) {
  y=0;
  }
}
