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
    text("Everything seems good up here, blast off was a success", owenX + 200, owenY + -11);

    //background for text 
    fill(150);
    rect(0, height - 10, width, 10);
  } else if (scene == 2) { 
    //place guy 1 in the middle
    int owenX = 465;
    int owenY = 275;
    OBRobot owenRobot = new OBRobot();
    owenRobot.drawAt(owenX, owenY, 0.17, 0.17);


    // place guy 2 on the left
    int kernX = 390;
    int kernY = 275;
    KCRobot kernRobot = new KCRobot();
    kernRobot.drawAt(kernX, kernY, 0.17, 0.17);


    //place guy on the right

    int timX = 550;
    int timY = 290;
    TMRobots timRobot = new TMRobots();
    timRobot.drawAt(timX, timY, 0.19, 0.19); 

    //make fire at bottom of space ship
    fill(#FF0000); 
    ellipse(454, 624, 108, 67);
    ellipse(544, 627, 112, 69);

    //make a space ship windows 
    fill(#C0C0C0);
    rect(400, 250, 10, 150);
    rect(400, 250, 190, 10);
    rect(590, 250, 10, 150);
    rect(535, 250, 10, 150);
    rect(470, 250, 10, 150);


    //make space ship 
    fill(#ffffff);
    rect(400, 330, 200, 300);
    rect(400, 230, 200, 20);
    fill(#C0C0C0);
    rect(400, 325, 200, 10);


    //make pointed top of triangle
    // draw a triangle with vertices at
    // (100, 100), (300, 100), and (200, 300)
    fill(0);
    triangle(491, 18, 402, 229, 599, 229);

    //make speech bubble
    fill(225);
    noStroke();
    ellipse(timX + 200, timY + -15, 280, 75);


    //add text
    fill(0);
    textAlign(CENTER);
    textSize(10);
    text("We seem to be running low on oxygen.", timX + 200, timY + -11);

    //background for text 
    fill(150);
    rect(0, height - 10, width, 10);

    //make speech bubble
    fill(225);
    noStroke();
    ellipse(kernX + -46, kernY + -15, 280, 75);

    //add text
    fill(0);
    textAlign(CENTER);
    textSize(10);
    text("Houston we have a problem", kernX + -42, kernY + -11);

    //background for text 
    fill(150);
    rect(0, height - 10, width, 10);
  } else if (scene == 3) {

    // place guy one in center
    int owenX = 471;
    int owenY = 393;
    OBRobot owenRobot = new OBRobot();
    owenRobot.drawAt(owenX, owenY, 0.2, 0.2);


    // place guy 2 on the left
    int kernX = 345;
    int kernY = 374;
    KCRobot kernRobot = new KCRobot();
    kernRobot.drawAt(kernX, kernY, 0.3, 0.3);


    //place guy on the right

    int timX = 593;
    int timY = 406;
    TMRobots timRobot = new TMRobots();
    timRobot.drawAt(timX, timY, 0.3, 0.3); 


    //make space ship that they come home in

    fill(0);
    triangle(526, 43, 383, 369, 672, 372);

    //make a space ship windows 
    fill(#C0C0C0);
    rect(385, 369, 10, 95);
    rect(381, 370, 290, 10);
    rect(662, 371, 10, 91);
    rect(567, 369, 10, 93);
    rect(473, 370, 10, 94);
    rect(386, 454, 288, 10);

    //make bottom of ship
    fill(225);
    rect(385, 463, 288, 239);

    //make speech bubble
    fill(225);
    noStroke();
    ellipse(timX + 200, timY + -15, 280, 75);

    //add text
    fill(0);
    textAlign(CENTER);
    textSize(10);
    text("we made it home safely, it's good to be back.", timX + 200, timY + -11);

    //background for text 
    fill(150);
    rect(0, height - 10, width, 10);
  } else if (scene==4) {
    fill(#FF0000);
    textSize(64);
    textAlign(CENTER);
    text("Apollo 13", 300, 200);
    textSize(32);
    text("By: Owen Barney", 150, 600);
  }

  if (frameCount % 180==0) {
    scene+=1;
    println("here");
  }
  saveFrame("export-####.png");


}  


//this runs when key is pressed 
void keyPressed() {

  scene += 1;
}