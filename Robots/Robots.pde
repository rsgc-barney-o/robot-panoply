int scene = 1; // start at scene one

void setup() { 

  size(1000, 700);
}

void draw() { 
  
  // alway clearing background 
  background(100);
  
  //make a decision 
  if (scene == 1) {
    
    // place guy one in center
    int X = 325;
    int Y = 275;
    OBRobot owenRobot = new OBRobot();
    owenRobot.drawAt(X, Y, 0.5, 0.5);
    
  }
  
  
}
    
 