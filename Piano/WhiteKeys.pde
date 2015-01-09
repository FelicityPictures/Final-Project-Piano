class WhiteKeys extends Keys {

  PShape whiteKey;

  public WhiteKeys(int x, int y, char note) {
    whiteKey = createShape();
    whiteKey.beginShape();
    whiteKey.vertex(1, 1);
    whiteKey.vertex(35, 1);
    whiteKey.vertex(35, 100);
    whiteKey.vertex(50, 100);
    whiteKey.vertex(50, 200);
    whiteKey.vertex(1, 200);
    whiteKey.endShape(CLOSE);
    setx(x);
    sety(y);
    setNote(note);
  }
  //void draw() 

 public void show(){
     shape(whiteKey,getx(),gety());
  }
}
//{
//  shape(whiteKey,0,0);
//}

