class rain { // This is where I am defining all the variables!
  float x = random(width);
  float y = random(-400, 400);
  float z = random(0, 20);
  float len = map(z, 0, 20, 5, 10);
  float y_speed = map(z, 0, 20, 5, 10);
  
  void fall() {  //this is the function created for making the drops fall
    y = y + y_speed;
    y_speed = y_speed + 0.1; //increasing the speed by 0.1 every frame
    
    if (y > height) { // This if statment helps define the speed of which the drops are falling.
      y = random (-200, -100); //where they are falling from
      y_speed = map(z, 0, 20, 5, 22);
    }
  }
  
  void show () {  // this function is created for what the drops are going to look like.
    float thickness = map(z, 0, 20, 1, 3);
    strokeWeight(thickness);
    stroke(5, 0, 128);
    line(x, y, x, y + len);
  }
}
