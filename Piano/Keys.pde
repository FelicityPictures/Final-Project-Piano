public class Keys {
  //Instance variables: width, length, x/y coordinate, color; note
  int x, y, origColor, col, pitch;
  Note note;

  //constructor
  Keys(int x, int y, int origColor, int pitch) {
    setx(x);
    sety(y);
    setOrigColor(origColor);
    setColor(origColor);
    setPitch(pitch);
    setNote(pitch);
  }

  Keys() {
  }

  public int getx() {
    return x;
  }
  void setx(int xcor) {
    x = xcor;
  }

  int gety() {
    return y;
  }
  void sety(int ycor) {
    y = ycor;
  }

  int getPitch() {
    return pitch;
  }
  void setPitch(int p) {
    pitch = p;
  }

  void setOrigColor(int oc) {
    origColor = oc;
  }

  void setColor(int c) {
    col = c;
  }

  int getColor() {
    return col;
  }

  void setNote(int p) {
    int c = 0;
    int v = 100;
    //int t = 500;
    p = pitch;
    note = new Note(c, p, v);
  }

  void show() {
  }


  //used by Piano to change color and play note

  public void pressed(boolean p) {
    /*
    if (p) {
     setColor(255);
     show();
     } else {
     //go back to normal
     setColor(origColor);
     show();
     }
     */
  }

  void playNote(int p, boolean b) {
    if (b == true) {
      midiBus.sendNoteOn(note);
    }
  }
}

