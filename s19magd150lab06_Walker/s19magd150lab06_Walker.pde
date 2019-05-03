rain[] drops = new rain[400]; //calling and setting up the class!

void setup(){
  size(900, 650);
  
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new rain();
  }
}

void draw() { 
  fill(173, 216, 250);
  stroke(0);
  rect(0, 0, width, height); // drawing the background
  
  fill(255);
  noStroke();
  ellipse(450, 100, width, 300); // my terrible "cloud"
  
  for (int i = 0; i < drops.length; i++) {
    drops[i].show(); //calling the show function
    drops[i].fall(); //calling the fall function
  }
}

//I also want to give credit to @openprocessing for helping me
//get the code I needed. Making the rain move was difficult
