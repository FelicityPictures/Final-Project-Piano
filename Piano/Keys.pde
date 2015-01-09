public class Keys {
  //Instance variables: width, length, x/y coordinate, color; note
  int keyWidth, keyLength, x, y, c, origColor;
  char note;
  boolean isBlack;

  //constructor
  Keys(boolean isBlack, int x, int y, char note) {
    setx(x);
    sety(y);
    setNote(note);
    if (isBlack) {
      setKeyWidth(30);
      setKeyLength(100);
      setColor(0);
      setOrigColor(0);
    } else {
      setKeyWidth(50);
      setKeyLength(200);
      setColor(255);
      setOrigColor(255);
    }
  }

  public int getx() {
    return x;
  }
  private void setx(int xcor) {
    x=xcor;
  }

  public int gety() {
    return y;
  }
  private void sety(int ycor) {
    y=ycor;
  }

  public int getKeyWidth() {
    return keyWidth;
  }
  private void setKeyWidth(int wide) {
    keyWidth=wide;
  }

  public int getKeyLength() {
    return keyLength;
  }
  private void setKeyLength(int high) {
    keyLength=high;
  }

  public int getColor() {
    return c;
  }
  private void setColor(int col) {
    c=col;
  }

  public char getNote() {
    return note;
  }
  private void setNote(char n) {
    note=n;
  }

  public void setOrigColor(int oc) {
    origColor = oc;
  }
  //used by Piano to change color and play note
  public void pressed(boolean p) {
    if (p) {
      setColor(200);
      show();
    } else {
      //go back to normal
      setColor(origColor);
      show();
    }
  }

  public void show() {
    fill(c);
    rect(x, y, keyWidth, keyLength);
  }
}

