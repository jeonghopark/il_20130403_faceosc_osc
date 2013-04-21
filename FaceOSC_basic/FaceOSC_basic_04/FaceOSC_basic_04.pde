import oscP5.*;
OscP5 oscP5;

float found;

void setup() {
  size(640, 480);
  frameRate(30);

  oscP5 = new OscP5(this, 8338);
}

void draw() {  
  background(120);
  stroke(0);

  if (found==1){
  	background(0);
    rectMode(CENTER);
    textSize(120);
    textAlign(CENTER);
    text("FOUND", width/2, height/2);
  }

}

// OSC CALLBACK FUNCTIONS
void oscEvent(OscMessage m) {
    if(m.checkAddrPattern("/found")) {
        found = m.get(0).intValue();
        println(found);
    }   
}