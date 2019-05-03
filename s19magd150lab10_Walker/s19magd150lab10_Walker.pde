float x = 0;
int pos=0, width=800, height=600;
float theta = 0.1;
float col = 0;
float eyeX, eyeY, eyeZ;
float ang = 0;
int d = 200;  //defining so many variables


void setup() {
  size(800,600, P3D);
  frameRate(50);
eyeX = width/2;
  eyeY = height/2;
  eyeZ = d;

}

void draw() {
  background(#985DE8);
   ambientLight(200, 190, 210, width/2, width/2,20); //all of the lights!
  pointLight(128, 200, 128, width/2-64, width/2+64,100);
  pointLight(128, 128, 200, width/2+64, width/2-64,100);
  
if (eyeZ<0)
    camera(eyeX, eyeY, eyeZ, 
    width/2, height/2, 0, 
    0, -1, 0);
  else
    camera(eyeX, eyeY, eyeZ, 
    width/2, height/2, 0, 
    0, 1, 0);
  
 float ballWidth = 150 +((sin(theta)+1) * 80); // this makes the shapes move in and out
 
  pushMatrix();
  fill(#39B851, 255);
  translate(width/2, height/4);
  box(ballWidth/2);
  popMatrix();
  
  pushMatrix();
  fill(#EEB879);
  translate(width/2, height-160,0);
  sphere(ballWidth/2);
  popMatrix();
  
  if (col >= 300) {
    col = 0;
  }
  
  theta += 0.02;
  col+=1;
}

void keyPressed() {
  switch(key) {
    // Moving the camera
  case CODED:
    if (keyCode == UP) {
      ang += 5;
    }
    if (keyCode == DOWN) {
      ang -= 5;
    }
    break;
 
  }
 
  if (ang>=360)
    ang=0;
  eyeY = (height/2)-d*(sin(radians(ang)));
  eyeZ = d*cos(radians(ang));
}  // lines 56 - 74 I had to use from another source. Processing 2.0/3.0 Forum.org.
