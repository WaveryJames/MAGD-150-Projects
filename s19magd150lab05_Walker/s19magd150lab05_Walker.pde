
int rectX, rectY;// Position of rectangle "button"
int cirX, cirY; // Position of circle "button"
int rectSize = 300;  // Diameter of rectangle?
int cirSize = 300;   // Diameter of circle?
color rectColor, circleColor, baseColor;  // this is defining the rectangle color variable?
color rectHighlight, cirHighlight;
color TVColor;
boolean rectHover = false; 
boolean cirHover = false;
boolean antenaTV = false;
boolean tvScreen = false;

void setup(){
  size(800, 600);
  rectColor = color(67, 69, 58);
  rectHighlight = color(30, 220, 200);
  circleColor = color (232, 67, 34);
  cirHighlight = color (44, 171, 43);
  baseColor = color(255);
  TVColor = baseColor;
  rectX = height/2+ 100;
  rectY = width/4 + 50;
  cirX = width/2 -cirSize/2;
  cirY = height/3;
 
  ellipseMode(CENTER);
}

void draw(){
  update(mouseX, mouseY);
  background(255);
  
  if (antenaTV) {
   line(460, 150, 500, 260);
    line(650, 150, 620, 260);
  }
  
  if(rectHover) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  strokeWeight(3);
  stroke(0);
  rect(rectX, rectY, rectSize, rectSize);
  
  if(tvScreen) {
    fill(228, 227, 255);
    rect(430, 275, 230, 250);
    textSize(32);
  fill(100);
  text("Push to Connect", rectX+ 20, 475);
  }
  
  if (cirHover) {
    fill(cirHighlight);
  } else {
    fill(circleColor);
  }
  strokeWeight(3);
  stroke(0);
  ellipse(cirX, cirY, cirSize, cirSize);
  textSize(48);
  fill(212);
  text("Push for ON", cirX-130, cirY);
}

void update(int x, int y){
  if (overRect(rectX, rectY, rectSize, rectSize) ) {
    rectHover = true;
    cirHover = false;
  } else if ( overCir( cirX, cirY, cirSize) ) {
    cirHover = true;
    rectHover = false;
  } else {
    cirHover = rectHover = false;
  }
}
    
void mousePressed() {
  if (rectHover) {
    antenaTV = true;
  }

  if (cirHover) {
    tvScreen = true;
  }
}

boolean overRect(int x, int y, int width, int height) {
  if (mouseX>= x && mouseX<= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCir (int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
