Circle circle1;
Circle circle2;
Rectangle rectangle;

int num = 50;
Circle[] tail;

float state = 1;
float xStartC = random(width);
float yStartC = random(height);
float xStartR = random(width);
float yStartR= random(height);
float xSpeedC = random(-3, 3);
float ySpeedC = random(-3, 3);
float xSpeedR = random(-3, 3);
float ySpeedR = random(-3, 3);
float diameter = 50;
float maxColor = 255;


float R = random (maxColor);
float G = random (maxColor);
float B = random (maxColor);



int transparency = 100;

void setup() {
  size(500, 500);
  circle1 = new Circle(mouseX, mouseY, diameter, R, G, B, state, transparency);
  circle2 = new Circle(xStartC, yStartC, xSpeedC, ySpeedC, diameter, R, G, B, state, transparency);


  rectangle = new Rectangle (xStartR, yStartR, xSpeedR, ySpeedR, diameter, R, G, B, state);

  tail = new Circle[50];

  for (int i = 0; i < num; i++) {
    tail[i] = new Circle(mouseX, mouseY, diameter, R, G, B, state, transparency);
  }
}



void draw() {
  background(maxColor);

  for (int i = num-1; i > 0; i--) {
    tail[i].x=tail[i-1].x;
    tail[i].y=tail[i-1].y;
  }
  // Add the new values to the beginning of the array
  tail[0].x = mouseX;
  tail[0].y = mouseY;
  // Draw the "tail"
  for (int i = 0; i < num; i++) {
    tail[i].display();
  }

  circle1.display();
  circle1.overlap();
  circle1.x=mouseX;
  circle1.y=mouseY;

  circle2.display();
  circle2.move();

  rectangle.move();
  rectangle.display();
}
