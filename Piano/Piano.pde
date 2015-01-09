Keys S, D, F, G, H, J, K, E, R, Y, U, I;


void setup() { 
  size(351, 300, P2D);
  //make keys

  S = new WhiteKeys(0, 99, 'c');
  D = new WhiteKeys(50, 99, 'd');
  F = new WhiteKeys(100, 99, 'e');
  G = new WhiteKeys(150, 99, 'f');
  H = new WhiteKeys(200, 99, 'g');
  J = new WhiteKeys(250, 99, 'a');
  K = new WhiteKeys(300, 99, 'b');
  
  E = new BlackKeys(35, 99, '1');
  R = new BlackKeys(85, 99, '2');
  Y = new BlackKeys(185, 99, '3');
  U = new BlackKeys(235, 99, '4');
  I = new BlackKeys(285, 99, '5');

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
/*
void keyPressed() {
    if(key == 's'){
      int before = S.getColor();
      S.pressed(true);
    }
}

void keyReleased(){
  if(key == 's' && S.getColor() == 200){
    S.pressed(false);
  }
}
*/

