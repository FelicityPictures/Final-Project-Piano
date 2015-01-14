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
  if (key == 'd') {
    //int before = S.getColor();
    KeyBoard[1].pressed(true);
  }
  if (key == 'f') {
    //int before = S.getColor();
    KeyBoard[2].pressed(true);
  }
  if (key == 'g') {
    //int before = S.getColor();
    KeyBoard[3].pressed(true);
  }
  if (key == 'h') {
    //int before = S.getColor();
    KeyBoard[4].pressed(true);
  }
  if (key == 'j') {
    //int before = S.getColor();
    KeyBoard[5].pressed(true);
  }
  if (key == 'k') {
    //int before = S.getColor();
    KeyBoard[6].pressed(true);
  }
  if (key == 'e') {
    //int before = S.getColor();
    KeyBoard[7].pressed(true);
  }
  if (key == 'r') {
    //int before = S.getColor();
    KeyBoard[8].pressed(true);
  }
  if (key == 'y') {
    //int before = S.getColor();
    KeyBoard[9].pressed(true);
  }
  if (key == 'u') {
    //int before = S.getColor();
    KeyBoard[10].pressed(true);
  }
  if (key == 'i') {
    //int before = S.getColor();
    KeyBoard[11].pressed(true);
  }
  
}

void keyReleased() {
  if (key == 's' && KeyBoard[0].getColor() == 200) {
    KeyBoard[0].pressed(false);
  }
   if (key == 'd' && KeyBoard[1].getColor() == 200) {
    KeyBoard[1].pressed(false);
  }
   if (key == 'f' && KeyBoard[2].getColor() == 200) {
    KeyBoard[2].pressed(false);
  }
   if (key == 'g' && KeyBoard[3].getColor() == 200) {
    KeyBoard[3].pressed(false);
  }
   if (key == 'h' && KeyBoard[4].getColor() == 200) {
    KeyBoard[4].pressed(false);
  }
   if (key == 'j' && KeyBoard[5].getColor() == 200) {
    KeyBoard[5].pressed(false);
  }
   if (key == 'k' && KeyBoard[6].getColor() == 200) {
    KeyBoard[6].pressed(false);
  }
   if (key == 'e' && KeyBoard[7].getColor() == 200) {
    KeyBoard[7].pressed(false);
  }
   if (key == 'r' && KeyBoard[8].getColor() == 200) {
    KeyBoard[8].pressed(false);
  }
   if (key == 'y' && KeyBoard[9].getColor() == 200) {
    KeyBoard[9].pressed(false);
  }
   if (key == 'u' && KeyBoard[10].getColor() == 200) {
    KeyBoard[10].pressed(false);
  }
   if (key == 'i' && KeyBoard[11].getColor() == 200) {
    KeyBoard[11].pressed(false);
  }
}
