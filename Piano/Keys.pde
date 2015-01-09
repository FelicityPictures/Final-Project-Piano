public class Keys {
  //Instance variables: width, length, x/y coordinate, color; note
  int x, y, origColor;
  char note;

  //constructor
  Keys(int x, int y, char note) {
    setx(x);
    sety(y);
    setNote(note);
  }
  
  Keys(){
  }

  public int getx() {
    return x;
  }
  public void setx(int xcor) {
    x=xcor;
  }

  public int gety() {
    return y;
  }
  public void sety(int ycor) {
    y=ycor;
  }

  public char getNote() {
    return note;
  }
  public void setNote(char n) {
    note=n;
  }

  public void setOrigColor(int oc) {
    origColor = oc;
  }
  
  public void show(){
  }
  //used by Piano to change color and play note
  /*
  public void pressed(boolean p) {
   if (p) {
   setColor(200);
   //show();
   } else {
   //go back to normal
   setColor(origColor);
   //show();
   }
   }
   
   //show()
   */
}

