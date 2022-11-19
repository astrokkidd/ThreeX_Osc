import processing.sound.*;

void setup() {
  size(450, 300);
  //load fonts and PNGs
  numFont = loadFont("Ebrima-Bold-48.vlw");
  nameFont = loadFont("BookmanOldStyle-BoldItalic-20.vlw");
  centFont = loadFont("Roboto-Medium.vlw");
  labelFont = loadFont("Arial-BoldMT-18.vlw");

  sinePng = loadImage("sinewave.png");
  squarePng = loadImage("squarewave.png");
  sawPng = loadImage("sawwave.png");
  //load osc
  oscillators();
}

void draw() {
  //set title and background
  theme();
  background(themeColor4);
  //call each function
  display();
  press();
  update(mouseX, mouseY);
  findCent();
  volume();
}
