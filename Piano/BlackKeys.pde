class BlackKeys extends Keys {

  public BlackKeys(int x, int y, char note) {
    setx(x);
    sety(y);
    setNote(note);
  }

  public void show() {
    fill(0);
    rect(getx(), gety(), 30, 100);
  }
}

