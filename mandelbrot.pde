Complex z0 = new Complex(0, 0);

double depth = 20;
float SCALE = 128;

void setup() {
  size(640, 480);
  background(0);

  stroke(255);
  strokeWeight(2);
}

void draw() {
  background(0);
  fill(255);
  println(frameRate);
  
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      if (isMandlebrot(new Complex((x - width/2.0)/SCALE, (y - height/2.0)/SCALE))) point(x, y);
    }
  }
  
  noLoop();
}

boolean isMandlebrot(Complex c) {
  Complex zn = z0.mul(z0).add(c);

  for (int i = 0; i < depth; i++) {
    float x = (float)zn.real;
    float y = (float)zn.complex;

    if (x*x + y*y > 4) return false;

    zn = zn.mul(zn).add(c);
  }

  return true;
}
