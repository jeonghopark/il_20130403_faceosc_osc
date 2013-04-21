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

void oscEvent(OscMessage m) 
{
	if(m.checkAddrPattern("/pose/position")) 
	{
    float x = m.get(0).floatValue();
    float y = m.get(1).floatValue();
    println("x : " + x);
    println("y : " + y);
  }
}