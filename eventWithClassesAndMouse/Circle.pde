class Circle {
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

  int transparency;



  //  circle = new Circle(random(width), random(height), random(-3,3), random(-3,3), 50);
  Circle(float temp_x, float temp_y, float diameter, float R, float G, float B, float state, int transparency) {
    x = temp_x;
    y = temp_y;
    this.diameter = diameter;
    this.state = state;
    this.R=R;
    this.G=G;
    this.B=B;
    this.transparency = transparency;
  }

  Circle(float x, float y, float xSpeed, float ySpeed, float diameter, float R, float G, float B, float state, int transparency) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.diameter = diameter;
    this.state = state;
    this.R=R;
    this.G=G;
    this.B=B;
    this.transparency = transparency;
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

  void overlap() {
    float substract = 20;
    
    float xC1 = circle1.x - substract;
    float yC1 = circle1.y - substract;
    float xC2 = circle2.x - substract;
    float yC2 = circle2.y - substract;    
    float xR = rectangle.x - substract;
    float yR = rectangle.y - substract;
    
    float d1=dist(xC1, yC1, xR, yR);
    if (d1<=diameter) {
      circle1.R=random(maxColor);
      circle1.G=random(maxColor);
      circle1.B=random(maxColor);
      rectangle.R=random(maxColor);
      rectangle.G=random(maxColor);
      rectangle.B=random(maxColor);
    }
    float d2=dist(xC2, yC2, xC1, yC2);
    if (d2<=diameter) {
      circle2.R=random(maxColor);
      circle2.G=random(maxColor);
      circle2.B=random(maxColor);
      circle1.R=random(maxColor);
      circle1.G=random(maxColor);
      circle1.B=random(maxColor);
    }
  }


  void display() {
    fill(R, G, B);
    ellipse(x, y, diameter, diameter); 

  }
  
}
