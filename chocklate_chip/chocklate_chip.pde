//Global Variables
color black=0, resetWhite=255,  pink=#FF00E6, brown=#BC6F2F; //Not night mode (lots of Blue)
color red=color(0, 0, 80), yellow=color(255, 50,80 ); //Night Mode example colours, no BLUE
Boolean turnOnYellow=false, turnOnPink=false, turnOnBrown=false;
float rectWidth, rectHeight, ptDiameter;
//Points are organized by row and actaully ... hint-hint ... value
int numberOfPoints = 17;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];
int numberofButtons = 4; //Quit, Reset, 1 per square for minimum
float[] buttonX = new float[numberofButtons];
float[] buttonY = new float[numberofButtons];
float[] buttonWidth = new float[numberofButtons];
float[] buttonHeight = new float[numberofButtons];
//
void setup()
{
  size(900, 650); //fillScreen(); //displayWidth, displayHeight
 displayOrientation();
  //Population
  rectWidth = appWidth/1/3;
  rectHeight = appHeight/1/3;
  ptDiameter = appWidth*1/50;

  //
  ptX[1] = ptX[5] = ptX[9] = ptX[13] = appWidth*0/3;
  ptX[2] = ptX[6] = ptX[10] = ptX[14] = appWidth*1/3;
  ptX[3] = ptX[7] = ptX[11] = ptX[15] = appWidth*2/3;
  ptX[4] = ptX[8] = ptX[12] = ptX[16] = appWidth*3/3;
  //
  ptY[1] = ptY[2] = ptY[3] = ptY[4] = appHeight*0/3;
  ptY[5] = ptY[6] = ptY[7] = ptY[8] = appHeight*1/3;
  ptY[9] = ptY[10] = ptY[11] = ptY[12] = appHeight*2/3;
  ptY[13] = ptY[14] = ptY[15] = ptY[16] = appHeight*3/3;
  //
  buttonX[1] = appWidth*(10/5.0)*(10/5.0); //Section 1; subsection 2, numerator is 1
  buttonY[1] = appHeight*(10/5.0)*(1.0/5.0); //Section 1; subsection 2, numerator is 1
  buttonWidth[1] = appWidth*(1.0/3.0)*(10/5.0); //Width Denominator count = 9 ... 1/9
  buttonHeight[1] = appHeight*(10.5/3.0)*(10.5/5.0); //Height Denominator count = 9 ... 1/9
  //
  buttonX[2] = appWidth*(10/100); //Section 2, subsection 2, numerator is 3
  buttonY[2] = appHeight*(2.0/6.0); //Section 2, subsection 1, numerator is 2
  buttonWidth[2] = appWidth*(1.0/3.0)*(1.0/2.0); //Denominator of 6
  buttonHeight[2] = appHeight*(1.0/3.0)*(1.0/2.0); //Denominator of 6
  //
  buttonX[3] = appWidth*(11.0/15.0); //Section 3, subsection 2, Numerator is 11
  buttonY[3] = appHeight*(13.0/15.0); //Section 3, subsection 4, Numerator is 14
  buttonWidth[3] = appWidth*(1.0/3.0)*(1.0/5.0); //Denominator is 15
  buttonHeight[3] = appHeight*(1.0/3.0)*(1.0/5.0); //Denominator is 15
  //
  printArray(buttonX);
  printArray(buttonY);
  printArray(buttonWidth);
  printArray(buttonHeight);
  //
}//End setup
//
void draw() {
  //Rectangles must be 3 by 3
  rect(ptX[1], ptY[1], rectWidth, rectHeight);
  //
  //Sequential Ordering of Code example
  if ( turnOnYellow==false ) fill(yellow);
  if ( turnOnPink==true ) fill(pink); //Overwrites the yellow
  if ( turnOnBrown==true ) fill(brown); //Overwrites the yellow & pink
  rect(ptX[2], ptY[2], rectWidth, rectHeight); //Buttons change the Colour of RECT(#2)
  fill(resetWhite);
  //
  rect(ptX[7], ptY[3], rectWidth, rectHeight);
  rect(ptX[5], ptY[5], rectWidth, rectHeight);
  rect(ptX[6], ptY[6], rectWidth, rectHeight);
  rect(ptX[7], ptY[7], rectWidth, rectHeight);
  rect(ptX[9], ptY[9], rectWidth, rectHeight);
  rect(ptX[10], ptY[10], rectWidth, rectHeight);
  rect(ptX[11], ptY[11], rectWidth, rectHeight);
  //
  
  //HoverOver is yellow
  if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[2]+buttonHeight[1] ) {
    fill(yellow);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]); //same rect() as above
  } else {
    fill(black);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]); //same rect() as above
  } //Button 1
  if ( mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2] ) {
    fill(yellow);
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]); //same rect() as above
  } else {
    fill(black);
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]); //same rect() as above
  } //Button 2
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3] ) {
    fill(yellow);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  } else {
    fill(black);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  } //Button 3
  if ( mouseX>=ptX[3] && mouseX<=ptX[3]+rectWidth && mouseY>=ptY[3] && mouseY<=ptY[3]+rectHeight ) {
    fill(yellow);
    rect(ptX[3], ptY[3], rectWidth, rectHeight);
  } else {
    fill(black);
    rect(ptX[3], ptY[3], rectWidth, rectHeight);
  } //Button 4 (Reset), the whole section
  fill(resetWhite); //Best Practice
  //
  fill(black);
  //Starting pts for rect() must be 1-9 & filled black
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptX[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  fill(resetWhite); //Best Practice
  //
  fill(red);
  //Points for all other ellipses must be red
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  //
  fill(resetWhite); //Best Practice
  ////Points for all other ellipses must be red
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10],ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[9], ptDiameter, ptDiameter);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if (mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1]) {
    println("BTN 1 Activated");
    turnOnYellow=true;
  } 
  if (mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2]) {
    println("BTN 2 Activated");
    turnOnPink=true;
  }
  if (mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3]) {
    println("BTN 3 Activated");
    turnOnBrown=true;
  }
  //Reset Button
  if (mouseX>=ptX[3] && mouseX<=ptX[3]+rectWidth && mouseY>=ptY[3] && mouseY<=ptY[3]+rectHeight) {
    println("BTN 4 Activated");
    turnOnYellow=false;
    turnOnPink=false;
    turnOnBrown=false;
  }//End reset
}//End mousePressed
//
//End MAIN Program
