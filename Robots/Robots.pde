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
    int owenX = 325;
    int owenY = 250;
    OBRobot owenRobot = new OBRobot();
    owenRobot.drawAt(owenX, owenY, 0.5, 0.5);


    // place guy 2 on the left
    int kernX = 100;
    int kernY = 250;
    KCRobot kernRobot = new KCRobot();
    kernRobot.drawAt(kernX, kernY, 0.5, 0.5);


    //place guy on the right

    int timX = 600;
    int timY = 320;
    TMRobots timRobot = new TMRobots();
    timRobot.drawAt(timX, timY, 0.5, 0.5); 

    //make sides of ship
    fill(#ffffff);
    rect(1, 250, 150, 200);
    rect(755, 250, 245, 200);

    //make windows

    fill(#C0C0C0);
    rect(1, 400, 1000, 10);
    rect(350, 250, 15, 150);
    rect(350, 250, 210, 15);
    rect(550, 250, 15, 150);
    rect(150, 250, 15, 150 );
    rect(150, 250, 210, 15);
    rect(740, 250, 15, 150);
    rect(550, 250, 205, 15);

    //make bottom of ship
    fill(#ffffff);
    rect(1, 410, 1000, 500);
    
    //make speech bubble
    fill(225);
    noStroke();
    ellipse(owenX + 200, owenY + -15, 280, 75);
    
    //add text
    fill(0);
    textAlign(CENTER);
    textSize(10);
    text("everything seems good up here, blast off was a success", owenX + 200, owenY + -11);
    
    //background for text 
    fill(150);
    rect(0, height - 10, width, 10);
    
  
    
  }
}  

//this runs when key is pressed 
void keyPressed() {

  scene += 1;
}