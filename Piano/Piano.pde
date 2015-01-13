Keys[] KeyBoard = new Keys[12];

void setup() { 
  size(351, 301, P3D);
  //make keys

  KeyBoard[0] = new WhiteKeys(1, 0, 100, 'c');
  KeyBoard[1] = new WhiteKeys(2, 50, 100, 'd');
  KeyBoard[2] = new WhiteKeys(3, 150, 100, 'e');
  KeyBoard[3] = new WhiteKeys(1, 150, 100, 'f');
  KeyBoard[4] = new WhiteKeys(2, 200, 100, 'g');
  KeyBoard[5] = new WhiteKeys(2, 250, 100, 'a');
  KeyBoard[6] = new WhiteKeys(3, 350, 100, 'b');
  KeyBoard[7] = new BlackKeys(35, 100, '1');
  KeyBoard[8] = new BlackKeys(85, 100, '2');
  KeyBoard[9] = new BlackKeys(185, 100, '3');
  KeyBoard[10] = new BlackKeys(235, 100, '4');
  KeyBoard[11] = new BlackKeys(285, 100, '5');

 for(int i=0;i<KeyBoard.length;i++){
     KeyBoard[i].show();
 }
}

void draw() {
}

void keyPressed() {
  if (key == 's') {
    //int before = S.getColor();
    KeyBoard[0].pressed(true);
  }
}

void keyReleased() {
  if (key == 's' && KeyBoard[0].getColor() == 200) {
    KeyBoard[0].pressed(false);
  }
}
