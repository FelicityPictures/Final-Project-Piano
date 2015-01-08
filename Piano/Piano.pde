Keys S, D, F, G, H, J, K, E, R, Y, U, I;


void setup() { 
  size(351, 300);
  //make keys

  S = new Keys(false, 0, 99, 'c');
  D = new Keys(false, 50, 99, 'd');
  F = new Keys(false, 100, 99, 'e');
  G = new Keys(false, 150, 99, 'f');
  H = new Keys(false, 200, 99, 'g');
  J = new Keys(false, 250, 99, 'a');
  K = new Keys(false, 300, 99, 'b');
  E = new Keys(true, 35, 99, '1');
  R = new Keys(true, 85, 99, '2');
  Y = new Keys(true, 185, 99, '3');
  U = new Keys(true, 235, 99, '4');
  I = new Keys(true, 285, 99, '5');

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
  if(keyPressed){
    if (key == 's') {
      S.pressed(keyPressed);
    }
  }
}

