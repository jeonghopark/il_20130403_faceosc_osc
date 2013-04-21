import oscP5.*;
OscP5 oscP5;

void setup() {
  size(640, 480);
  frameRate(30);

  oscP5 = new OscP5(this, 8338);
}

void draw() {  
  background(255);
  stroke(0);
}

// OSC CALLBACK FUNCTIONS
void oscEvent(OscMessage m) {
    if(m.checkAddrPattern("/found")) {
        float found = m.get(0).intValue();
        println(found);
    }   
}