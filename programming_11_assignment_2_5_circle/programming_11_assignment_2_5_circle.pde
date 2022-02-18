int x,y;

void setup() {
  size(600,600);
  x=0;
  y=0;
  strokeWeight(5);
}

void draw(){
  background(255);
  ellipse(x,300,y,y);
  x=x+5;
  y=y+1;
  if(x>700) {
  x=0;
  y=0;
  }
}
