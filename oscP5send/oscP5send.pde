/**
 * oscP5sendreceive by andreas schlegel
 * example shows how to send and receive osc messages.
 * oscP5 website at http://www.sojamo.de/oscP5
 */
 
import oscP5.*;
import netP5.*;
  
OscP5 oscP5;
NetAddress myRemoteLocation;

void setup() {
  size(400,400);
  //Receiver
  oscP5 = new OscP5(this,12000);
  //Sender
  myRemoteLocation = new NetAddress("127.0.0.1",8000);
}


void draw() {
  background(0);
  OscMessage myMessage = new OscMessage("/xPosition");
  myMessage.add(mouseX); /* add an int to the osc message */

  OscMessage myMessage1 = new OscMessage("/yPosition");
  myMessage1.add(mouseY); /* add an int to the osc message */

  /* send the message */
  oscP5.send(myMessage, myRemoteLocation); 
  oscP5.send(myMessage1, myRemoteLocation); 
}
