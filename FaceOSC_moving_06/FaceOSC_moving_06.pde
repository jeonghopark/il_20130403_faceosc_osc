import oscP5.*;
OscP5 oscP5;

PVector headPosition;
int found;

void setup() 
{
  size(640, 480);
  frameRate(30);

  oscP5 = new OscP5(this, 8338);

  headPosition = new PVector();
  found = 0;
}

void draw() 
{  
  // background(120);
  stroke(0);

  rectMode(CENTER);
  if (found==1) rect(headPosition.x,headPosition.y,50,50);
}

void oscEvent(OscMessage m) 
{
  if (m.checkAddrPattern("/found"))
  {
    found = m.get(0).intValue();
  }

	if (m.checkAddrPattern("/pose/position")) 
	{
    headPosition.x = m.get(0).floatValue()*-1+width;
    headPosition.y = m.get(1).floatValue();
    println("x : " + headPosition.x);
    println("y : " + headPosition.y);
  }
}