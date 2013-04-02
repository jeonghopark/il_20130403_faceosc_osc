import oscP5.*;
 
OscP5 oscP5;
 
int xCord;
int yCord;
int xP;
int yP;

PVector xyData;
float xPos, yPos;


void setup() {
  size(400,400);
  oscP5 = new OscP5(this,8000);
  
  // set port address ("variable", "input address")
  oscP5.plug(this, "xPos", "/xPosition");
}
 
void draw()
{
  background(0);
  fill(120);
  rect(xPos, yPos, 20, 20);
}


public void xPos(int _x) {
  xPos = _x;
}

void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.isPlugged()==false) {
    println("UNPLUGGED: " + theOscMessage);
  }
}
