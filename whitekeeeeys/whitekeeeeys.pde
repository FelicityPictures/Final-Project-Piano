PShape whiteKey;

void setup() {
  size(30, 200, P2D);

  whiteKey = createShape();
  whiteKey.beginShape();
  whiteKey.vertex(1, 1);
  whiteKey.vertex(15, 1);
  whiteKey.vertex(15, 99);
  whiteKey.vertex(29, 99);
  whiteKey.vertex(29, 199);
  whiteKey.vertex(1, 199);
  whiteKey.endShape(CLOSE);
}

void draw() {
  shape(whiteKey);
}

