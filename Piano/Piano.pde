Keys S, D, F, G, H, J, K, E, R, Y, U, I;


void setup() { 
  size(351, 301, P3D);
  //make keys

  S = new WhiteKeys(1, 0, 100, 'c');
  D = new WhiteKeys(2, 50, 100, 'd');
  F = new WhiteKeys(3, 150, 100, 'e');
  G = new WhiteKeys(1, 150, 100, 'f');
  H = new WhiteKeys(2, 200, 100, 'g');
  J = new WhiteKeys(2, 250, 100, 'a');
  K = new WhiteKeys(3, 350, 100, 'b');

  E = new BlackKeys(35, 100, '1');
  R = new BlackKeys(85, 100, '2');
  Y = new BlackKeys(185, 100, '3');
  U = new BlackKeys(235, 100, '4');
  I = new BlackKeys(285, 100, '5');

  S.show();
  D.show();
  F.show();
  G.show();
  H.show();
  J.show();
  K.show();
  E.show();
  R.show();
  Y.show();
  U.show();
  I.show();
}

void draw() {
}

void keyPressed() {
  if (key == 's') {
    int before = S.getColor();
    S.pressed(true, false);
  }
}

void keyReleased() {
  if (key == 's' && S.getColor() == 200) {
    S.pressed(false, false);
  }
}

