int bg1, bg2, bg3;
int h1,h2,h3,h4,h5,h6;
int bunny;
int cloud;

void setup() {
  size(800,600);
  noStroke();
  bg1=-200;
  bg2=200;
  bg3=600;
  h1=-200;
  h2=0;
  h3=200;
  h4=400;
  h5=600;
  h6=800;
  cloud=400;
}

void draw() {
  //sky
  background(3, 173, 255);
  
  //cloud
  fill(255);
  ellipse(cloud,200,100,100);
  ellipse(cloud+50,200,100,100);
  ellipse(cloud+100,200,100,100);
  ellipse(cloud+50,150,100,100);
  //move cloud
  cloud=cloud+1;
  //loop cloud
  if (cloud>850) {
    cloud=-150;
  }
  
  //hill
  fill(3,255,93);
  ellipse(bg1,400,400,400);
  ellipse(bg2,400,400,400);
  ellipse(bg3,400,400,400);
  
  //move hills
  bg1 = bg1+2;
  bg2 = bg2+2;
  bg3 = bg3+2;
  
  //loop the hills
  if (bg1 >1000) {
    bg1 = -200;
  }
  if (bg2 >1000) {
    bg2 = -200;
  }
  if (bg3 >1000) {
    bg3 = -200;
  }
  
  //small hills
  fill(#40893D);
  ellipse(h1,400,200,200);
  ellipse(h2,400,200,200);
  ellipse(h3,400,200,200);
  ellipse(h4,400,200,200);
  ellipse(h5,400,200,200);
  ellipse(h6,400,200,200);
  //move the small hills
  h1=h1+3;
  h2=h2+3;
  h3=h3+3;
  h4=h4+3;
  h5=h5+3;
  h6=h6+3;
  //loop the small hills
   if (h1 > 1000) {
    h1 = -200;
  }
   if (h2 > 1000) {
    h2 = -200;
  }
  if (h3 > 1000) {
    h3 = -200;
  }
  if (h4 > 1000) {
    h4 = -200;
  }
  if (h5 > 1000) {
    h5 = -200;
  }
  if (h6 > 1000) {
    h6 = -200;
  }
  
  //ground
  fill(255,249,72);
  rect(0,400,800,200);
  
  //blob
  fill(255);
  ellipse(bunny,400,200,200);//head
  ellipse(bunny-50,300,50,100);//left ear
  ellipse(bunny+50,300,50,100);//right ear
  fill(0);
  ellipse(bunny-50,400,25,25);//left eye
  ellipse(bunny+50,400,25,25);//right eye
  //move bunny
  bunny=bunny+8;
  
  //loop bunny
  if (bunny>1000) {
    bunny=-200;
  }
}
