class WhiteKeys extends Keys {

  PShape whiteKey;

  public WhiteKeys(int pos, int x, int y, char note) {
    super(x, y, 255, note);
    if (pos == 1) { 
      makeWhiteKeysLeft();
    }
    if (pos == 2) { 
      makeWhiteKeysMid();
    }
    if (pos == 3 ) {
      makeWhiteKeysRight();
    }
  }

  void makeWhiteKeysLeft() {
    whiteKey = createShape();
    whiteKey.beginShape();
    whiteKey.vertex(0, 0);
    whiteKey.vertex(35, 0);
    whiteKey.vertex(35, 100);
    whiteKey.vertex(50, 100);
    whiteKey.vertex(50, 200);
    whiteKey.vertex(0, 200);
    whiteKey.endShape(CLOSE);
  }

  void makeWhiteKeysMid() {
    whiteKey = createShape();
    whiteKey.beginShape();
    whiteKey.vertex(0, 100);
    whiteKey.vertex(15, 100);
    whiteKey.vertex(15, 0);
    whiteKey.vertex(35, 0);
    whiteKey.vertex(35, 100);
    whiteKey.vertex(50, 100);
    whiteKey.vertex(50, 200);
    whiteKey.vertex(0, 200);
    whiteKey.endShape(CLOSE);
  }

  void makeWhiteKeysRight() {
    makeWhiteKeysLeft();
    whiteKey.rotateY(PI);
  }

  void show() {
    super.show();
    shape(whiteKey, getx(), gety());
  }
}

