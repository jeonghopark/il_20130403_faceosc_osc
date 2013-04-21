import oscP5.*;
OscP5 oscP5;

int found;

void setup() {
  size(640, 480);
  frameRate(30);

  oscP5 = new OscP5(this, 8338);
}

void draw() {  
  background(255);
  stroke(0);

  if (found==1){
  	background(0);
  }

}

// OSC CALLBACK FUNCTIONS
void oscEvent(OscMessage m) {
    if(m.checkAddrPattern("/found")) {
        found = m.get(0).intValue();
        println(found);
    }   
}