import processing.pdf.*; // I used the example from class to help with the
boolean recordScreen; // saving as a PDF process simpler
String filename;

int numStars = 600;
stars[] nightSky = new stars [numStars]; // calling my class
PFont myFont, myFont2; //identifying my font variables
void setup() {
  size (500, 700);
  surface.setTitle("Save PDF");
  filename = "itWorked";
  
  for (int i = 0; i < numStars; i++) {
    nightSky[i] = new stars();
  }
  myFont = createFont("Pacifico.ttf", 48); //loading in first ttf font file
  myFont2 = createFont("Amatic.ttf", 62);  //loading in second ttf font file
  
  noStroke();
  frameRate(5); //my starts sparkled WAY too fast, I used this to slow them down
}

void draw() {
    
  if (recordScreen){
    beginRecord(PDF, filename + ".pdf"); // I put this record at the beginning of the draw
  }                                      // so it captured everything. I made the mistake of 
                                         // putting it in the middle at first
  background (0);
  for (int i = 0; i<numStars; i++) {
    nightSky[i].display();
  }
  
  fill (36, 82, 135);
  textFont (myFont); // calling the first ttf font
  textAlign (CENTER, CENTER);
  text ("Embrace Your Sparkle",width/2, height/2);
  
  fill (236, 182, 35);
  textFont (myFont2); //calling the second ttf font
  text ("You are Beautiful",width/2, height-200);  
    
  if (recordScreen) {
    endRecord();
    recordScreen = false;
  }
}

void mousePressed() {  //I sued this from the save pdf example
  if (mouseButton == RIGHT) {
    recordScreen = true;
  }
}
