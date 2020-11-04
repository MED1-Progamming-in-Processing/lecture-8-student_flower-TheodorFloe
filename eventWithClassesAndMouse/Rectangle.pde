class Rectangle {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float diameter;
  float radius = diameter/2;
  float state;

  float R;
  float G;
  float B;


//Rectangle
  Rectangle(float x, float y, float xSpeed, float ySpeed, float diameter, float R, float G, float B, float state) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.diameter = diameter;
    this.state = state;
    this.R=R;
    this.G=G;
    this.B=B;
  }


  void move() {
    x += xSpeed;
    if (x <= radius || x >= width-radius) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y <= radius || y >= height-radius) {
      ySpeed *= -1;
    }
  }


  void display() {
    fill(R, G, B);
    rect(x, y, diameter, diameter);
    
  }
}
