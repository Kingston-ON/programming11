void setup(){
size(1100,600);
}

void draw () {
background(#0CD6EA);
//sky
fill(#8EEFF7);
stroke(#8EEFF7);
beginShape();
vertex(0,0);
vertex(1100,0);
vertex(1100,330);
vertex(0,330);
endShape();

//island
fill(#1DA043);
stroke(#1DA043);
  beginShape();
  curveVertex(580, 330); 
  curveVertex(580, 330); 
  curveVertex(630, 280); 
  curveVertex(690, 310); 
  curveVertex(740, 300); 
  curveVertex(770, 270);
  curveVertex(870,240);
  curveVertex(940,270);
  curveVertex(1040,250);
  curveVertex(1100, 340);
  curveVertex(1000, 360);
  curveVertex(950, 370);
  curveVertex(740, 350); 
  curveVertex(630, 360); 
  curveVertex(580, 330); 
  curveVertex(580, 330); 
  endShape();

fill(#EA7B0C);
stroke(#EA7B0C);
//bridge
beginShape();
vertex(0,535);
vertex(0,570);
vertex(970,303);
vertex(970,300);
endShape();

//first tower part1
beginShape();
vertex(354,95);
vertex(360,95);
vertex(362,580);
vertex(345,580);
endShape();


beginShape();
vertex(360,92);
vertex(360,112);
vertex(400,110);
vertex(400,90);
endShape();

beginShape();
vertex(360,172);
vertex(360,192);
vertex(400,190);
vertex(400,170);
endShape();

beginShape();
vertex(360,252);
vertex(360,272);
vertex(400,270);
vertex(400,250);
endShape();

beginShape();
vertex(360,332);
vertex(360,352);
vertex(400,350);
vertex(400,330);
endShape();

//2nd tower p1
beginShape();
vertex(910,360);
vertex(915,360);
vertex(915,220);
vertex(910,220);
endShape();

beginShape();
vertex(912,220);
vertex(912,215);
vertex(945,215);
vertex(945,220);
endShape();

beginShape();
vertex(912,245);
vertex(912,240);
vertex(945,240);
vertex(945,245);
endShape();

beginShape();
vertex(912,268);
vertex(912,263);
vertex(945,263);
vertex(945,268);
endShape();

beginShape();
vertex(912,290);
vertex(912,285);
vertex(945,285);
vertex(945,290);
endShape();

//pavement
fill(#8B8B8B);
stroke(#8B8B8B);
beginShape();
vertex(0,500);
vertex(0,535);
vertex(970,298);
vertex(958,300);
endShape();

//lastrope p1
fill(#EA7B0C);
stroke(#EA7B0C);
//firsttower p2

beginShape();
vertex(400,90);
vertex(406,90);
vertex(425,600);
vertex(402,600);
endShape();

//2ndtower p2
beginShape();
vertex(940,360);
vertex(945,360);
vertex(945,220);
vertex(940,220);
endShape();

int u=50;
strokeCap(SQUARE);
strokeWeight(0.1*u);
//rope
noFill();
bezier(8*u,1.75*u,11.2*u,7.5*u,17.7*u,7.9*u,18.9*u,4.3*u);
bezier(7.1*u,1.8*u,11.5*u,7.7*u,17*u,7.9*u,18.3*u,4.3*u);
curve(90,0,354,95,0,380,250,200);
curve(90,0,400,90,0,420,250,200);

//lastrope

arc(1020, 220, 150, 175, 1*PI/2, 1*PI);

//shore
fill(#1DA043);
stroke(#1DA043);

beginShape();
curveVertex(0,535);
curveVertex(0,535);
curveVertex(205,550);
curveVertex(245,550);
curveVertex(345,580);
curveVertex(425,600);
curveVertex(402,600);
curveVertex(0,600);
curveVertex(0,600);
endShape();

//vertical ropes
fill(#EA7B0C);
stroke(#EA7B0C);
line(883,300,883,325);
line(870,303,870,325);
line(855,310,855,330);
line(835,317,835,340);
line(810,325,810,350);
line(780,330,780,357);
line(740,330,740,365);
line(700,325,700,380);
line(650,310,650,390);
line(600,290,600,405);
line(550,260,550,405);
line(500,215,500,425);
line(450,160,450,445);
line(350,156,350,480);
line(300,200,300,480);
line(250,236,250,480);
line(200,275,200,500);
line(150,313,150,500);
line(100,353,100,540);
line(50,383,50,537);
}
