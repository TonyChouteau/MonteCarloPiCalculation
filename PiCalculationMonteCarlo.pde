int in = 0;
int out = 0;

void setup(){
 size (800,800, P2D);
 background(255);
 noSmooth();
 noFill();
 stroke(220);
 ellipseMode(CENTER);
 ellipse(0,height, height*2, height*2);
}

void draw(){
  float x = random(width);
  float y = random(height);
  
  if (sqrt(pow(x/height,2)+pow((height-y)/height,2))<=1){
    stroke(255,0,0);
    fill(255,0,0);
    in++;
  } else {
    stroke(0,0,255);
    fill(0,0,255);
    out++;
  }
  //point(x,y);
  ellipse(x,y,2,2);
  
  fill(255);
  textMode(CENTER);
  rectMode(CENTER);
  rect(width/2, height/2, 200, 40);
  fill(0);
  textSize(15);
  text(""+((double)in/((double)in+(double)out))*4, width/2-80, height/2+5);
  //println(((float)in/((float)in+(float)out))*4);
}
