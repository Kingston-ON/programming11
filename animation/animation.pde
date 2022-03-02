import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;
AudioPlayer


//palette of colors
color w = 255;
color b = 0;
color o =#FFD289;

int go,start,z;
int x1,xa,x2,xb;
int y1,ya,y2,yb;
int a1,a2,a3;
int b1,b2,b3,b4,b5;
int r2,g2,bb;
int r1,g1,ba;
int l;

void setup() {
  size(1000, 1000);
  //song=minim.loadFile("pop.mp3");
  minim=new Minim(this);
  song=minim.loadFile("danube.mp3"); 
  
  go=0;
  z=0;
  x1=y1=0;
  x2=1000;
  y2=850;
  start=0;
  r2=g2=bb=0;
  r1=g1=ba=0;
  l=0;
  a1=a2=a3=b1=b2=b3=b4=b5=900;
}

//click button
void mouseReleased() {
  if (dist(500, 500, mouseX, mouseY)<150) {
    background(255);
    start = 1;
  }
}

void draw() {
  background(0);
  //conditions of mouse and click button
  if (start == 0) {
    if (350<mouseY && mouseY<650 &&350<mouseX && mouseX<650) {
      go=1;
    } else {
      go=2;
    }
    
    //title+buttom (when mouse is not in the middle/clicked)
    if (go==1) {
      fill(w);
      textSize(20);
      text("Programming 11 Lesson 4D: Bouncing a Shape of the Edges",20,40);
      fill(80);
      circle(500, 500, 300);
      fill(w);
      triangle(450,450,450,550,550,500);
    }
    
    //title only
    if (go==2) {
      fill(w);
      textSize(20);
      text("Programming 11 Lesson 4D: Bouncing a Shape of the Edges",20,40);
    }
  }

  //play animation
  if (start==1) {
    song.play();
    background(0);
    
    //middle balls
    fill(o);
    circle(500,100,100);
    circle(500,200,100);
    circle(500,300,100);
    circle(500,400,100);
    circle(500,500,100);
    circle(500,600,100);
    circle(500,700,100);
    circle(500,800,100);
    
    if (dist(500, 100, x1, y1)<50 || dist(500, 100, x2, y2)<50) {
      a1=1;
    }
    if (a1==1) {
    fill(b);
    circle(500,100,101);
    }
    
    if (dist(500, 200, x1, y1)<50 || dist(500, 200, x2, y2)<50) {
      a2=1;
    }
    if (a2==1) {
    fill(b);
    circle(500,200,101);
    }
    
    if (dist(500, 300, x1, y1)<50 || dist(500, 300, x2, y2)<50) {
      a3=1;
    }
    if (a3==1) {
    fill(b);
    circle(500,300,101);
    }
    
    if (dist(500, 400, x1, y1)<50 || dist(500, 400, x2, y2)<50) {
      b1=1;
    }
    if (b1==1) {
    fill(b);
    circle(500,400,101);
    }
    
    if (dist(500, 500, x1, y1)<50 || dist(500, 500, x2, y2)<50) {
      b2=1;
    }
    if (b2==1) {
    fill(b);
    circle(500,500,101);
    }
    
    if (dist(500, 600, x1, y1)<50 || dist(500, 600, x2, y2)<50) {
      b3=1;
    }
    if (b3==1) {
    fill(b);
    circle(500,600,101);
    }
    
    if (dist(500, 700, x1, y1)<50 || dist(500, 700, x2, y2)<50) {
      b4=1;
    }
    if (b4==1) {
    fill(b);
    circle(500,700,101);
    }
    
     if (dist(500, 800, x1, y1)<50 || dist(500, 800, x2, y2)<50) {
      b5=1;
    }
    if (b5==1) {
    fill(b);
    circle(500,800,101);
    }
    
    //ball
    fill(r2,g2,ba);
    circle(x1,y1,100);
    fill(r1,g2,bb);
    circle(x2,y2,100);
    
    //rect
    fill(r2,ba,g2);
    rect(0,y1,5,100);
    rect(995,y1,5,100);
    fill(w);
    rect(0,y2,5,100);
    rect(995,y2,5,100);
    
    //
    stroke(b);
    fill(#ECFFBC);
    rect(800,750,200,150);
    noStroke();
    fill(#BCFFF3);
    ellipse(900,900,80,200);
    fill(#FFDEBC);
    circle(900,800,50);
    fill(b);
    rect(800,900,200,100);

    
    //change of ball speed
    x1=x1+xa;
    x2=x2 + xb /4;
    y1=y1+ya;
    y2=y2 + yb /2;
    //change of red bar
    //l=900*second()/15;
    l=900*millis()/1000/20;

    //bounce+change color when wall is touched      
    if(x1<=55){
      //song.play();
      //song.rewind();
      xa=15;
      r2=r2+25;
      g2=g2+20;
      ba=ba+10;
    }
    
    if(x1>=995){
      
     // song.rewind();
      xa=-15;
      r2=r2+25;
      g2=g2+20;
      ba=ba+10;
    }
    
    if(y1<50){
      //song.play();
      //song.rewind();
      ya=15;
      r2=r2+25;
      g2=g2+20;
      ba=ba+10;
    }
    
    if(y1>850){
      //song.play();
      //song.rewind();
      ya=-15;
      r2=r2+25;
      g2=g2+20;
      ba=ba+10;
    }    
    
    if(x2<50){
      //song.play();
      xb=15;
      r1=r1+25;
      g1=g1+20;
      bb=bb+10;
    }
    
    if(x2>=1000){
      //song.play();
      xb=-15;
      r1=r1+15;
      g1=g1+20;
      bb=bb+25;
    }
    
    if(y2<50){
      //song.play();
      yb=15;
      r1=r1+15;
      g1=g1+20;
      bb=bb+25;
    }
    
    if(y2>=850){
      //song.play();
      yb=-15;
      r1=r1+15;
      g1=g1+20;
      bb=bb+25;
    }
      
    if(r2>=255) {
      r2=r2-255;
    }
    
    if(g2>=255){
    g2=g2-255;
    }    
    
    if(ba>=255){
    ba=ba-255;
    }  
    
    if(r1>=255) {
      r1=r1-255;
    }
    
    if(g1>=255){
    g1=g1-255;
    }    
    
    if(bb>=255){
    bb=bb-255;
    }  
    
  //bar
  fill(100);
  rect(50,930,900,10);
  fill(255,0,0);
  rect(50,930,l,10);
  
  //timer
  fill(w);
  if (millis()<10000) {
  text("0:0"+millis()/1000+"/0:20",50,970,10);
  }
  
  if (millis()>=10000 && millis()<20000) {
  text("0:"+millis()/1000+"/0:20",50,970,10);
  }
  
  if (millis()>=10000 && millis()<20000) {
  text("0:"+millis()/1000+"/0:20",50,970,10);
  }
  
  //end animation+timer
  if (millis()>=20000) {
    fill(w);
    rect(100,100,500,500);
    //z=1;
    //go=0;
    //start=0;
  }
}
}
//p img
