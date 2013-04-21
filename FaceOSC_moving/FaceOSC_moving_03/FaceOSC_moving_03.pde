import oscP5.*;
OscP5 oscP5;

PVector headPosition;

void setup() {
  size(640, 480);
  frameRate(30);

  oscP5 = new OscP5(this, 8338);
}

void draw() {  
  background(120);
  stroke(0);

  rectMode(CENTER);
  rect(headPosition.x,headPosition.y,50,50);
}

void oscEvent(OscMessage m) 
{
	if(m.checkAddrPattern("/pose/position")) 
	{
    headPosition.x = m.get(0).floatValue();
    headPosition.y = m.get(1).floatValue();
    println("x : " + headPosition.x);
    println("y : " + headPosition.y);
  }
}