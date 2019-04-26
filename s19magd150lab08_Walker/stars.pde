class stars {
  float starsXPosition;
  float starsYPosition;
  float starsWidth;
  stars() {
    starsXPosition = random(width);
    starsYPosition = random(height);
    starsWidth = random(1,3);
  }
  
  void display () {
    fill (random(255));
    noStroke();
    ellipse (starsXPosition, starsYPosition, starsWidth, starsWidth);
  }
}
