int x;

void setup() {
  size(600,600);
  x=0;
  strokeWeight(5);
}

void draw(){
  background(255);
  ellipse(x,300,200,200);
  x=x-1;
  if(x<-100) {
  x=700;
  }
}
