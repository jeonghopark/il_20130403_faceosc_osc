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

void keyReleased()
{
  if (key=='1')
  {
    found = toggle(found);  
  }
}

int toggle (int _i)
{
  if (_i==1) return 0;
  else return 1;
}

// OSC CALLBACK FUNCTIONS
// void oscEvent(OscMessage m) {
//     if(m.checkAddrPattern("/found")) {
//         found = m.get(0).intValue();
//         println(found);
//     }   
// }