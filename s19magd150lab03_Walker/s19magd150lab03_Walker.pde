int f = 100;
float b = 50;
float c = f - b;

int q = max(0,10);
int speed = 5;

void setup() {
  size(500,500);
}
void draw() {
  background(255);
  float mx = constrain (mouseX, 150, 300);
  ellipse(mx, mouseY, 150, 100);
  
    q = q + speed;
 
  if ((q > width) || (q < 0)) 
    speed = speed * -1;
  
  noStroke();
  fill(237, 166, 311);
  rect(q, 150, 150, 150, 25);
  println(c);
}
