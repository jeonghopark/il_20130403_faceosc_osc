import oscP5.*;
OscP5 oscP5;

float found;
int alphaValue;
float rotateFactor;

void setup() {
  size(640, 480, OPENGL);
  frameRate(30);

  oscP5 = new OscP5(this, 8338);

  colorMode(HSB, 255);
  alphaValue = 255;
}

void draw() {  
  background(0);
  stroke(0);

  translate(width/2, height/2);
  
  if (found==1)
  { 
    rotateFactor = rotateFactor + 0.1;

    rectMode(CENTER);
    fill(random(255),255,255,255);
    alphaValue = 255;
  } 
  else 
  { 
    alphaValue = alphaValue - 10;
    fill(random(255),255,255,alphaValue);
    if (alphaValue<0) alphaValue = 0;
  }
  
  rotateY(rotateFactor);
  textSize(120);
  textAlign(CENTER);
  text("FOUND", 0, 0);

}

// OSC CALLBACK FUNCTIONS
void oscEvent(OscMessage m) {
    if(m.checkAddrPattern("/found")) {
        found = m.get(0).intValue();
        println(found);
    }   
}