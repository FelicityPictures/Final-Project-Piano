class BlackKeys extends Keys {

  public BlackKeys(int x, int y, char note) {
    super(x, y, 0, note);
  }

  void show() {
    super.show();
    rect(getx(), gety(), 30, 100);
  }
}

