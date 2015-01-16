import themidibus.*; 

MidiBus midiBus;

Keys[] KeyBoard = new Keys[12];

void setup() { 
  size(351, 301, P3D);
  //make keys
  KeyBoard[0] = new WhiteKeys(1, 0, 100, 60);
  KeyBoard[1] = new WhiteKeys(2, 50, 100, 62);
  KeyBoard[2] = new WhiteKeys(3, 150, 100, 64);
  KeyBoard[3] = new WhiteKeys(1, 150, 100, 65);
  KeyBoard[4] = new WhiteKeys(2, 200, 100, 67);
  KeyBoard[5] = new WhiteKeys(2, 250, 100, 69);
  KeyBoard[6] = new WhiteKeys(3, 350, 100, 71);
  KeyBoard[7] = new BlackKeys(35, 100, 61);
  KeyBoard[8] = new BlackKeys(85, 100, 63);
  KeyBoard[9] = new BlackKeys(185, 100, 66);
  KeyBoard[10] = new BlackKeys(235, 100, 68);
  KeyBoard[11] = new BlackKeys(285, 100, 70);

  for (int i=0; i<KeyBoard.length; i++) {
    KeyBoard[i].show();
  }

  midiBus = new MidiBus(this, 0, 2);
}

void draw() {
}

void keyPressed() {
  if (key == 's' && KeyBoard[0].getColor()==255) {
    KeyBoard[0].pressed(true);
    KeyBoard[0].playNote(KeyBoard[0].pitch, true);
  }
  if (key == 'd' && KeyBoard[1].getColor()==255) {
    KeyBoard[1].pressed(true);
    KeyBoard[1].playNote(KeyBoard[1].pitch, true);
  }
  if (key == 'f' && KeyBoard[2].getColor()==255) {
    KeyBoard[2].pressed(true);
    KeyBoard[2].playNote(KeyBoard[2].pitch, true);
  }
  if (key == 'g' && KeyBoard[3].getColor()==255) {
    KeyBoard[3].pressed(true);
    KeyBoard[3].playNote(KeyBoard[3].pitch, true);
  }
  if (key == 'h' && KeyBoard[4].getColor()==255) {
    KeyBoard[4].pressed(true);
    KeyBoard[4].playNote(KeyBoard[4].pitch, true);
  }
  if (key == 'j' && KeyBoard[5].getColor()==255) {
    KeyBoard[5].pressed(true);
    KeyBoard[5].playNote(KeyBoard[5].pitch, true);
  }
  if (key == 'k' && KeyBoard[6].getColor()==255) {
    KeyBoard[6].pressed(true);
    KeyBoard[6].playNote(KeyBoard[6].pitch, true);
  }
  if (key == 'e' && KeyBoard[7].getColor()==0) {
    KeyBoard[7].pressed(true);
    KeyBoard[7].playNote(KeyBoard[7].pitch, true);
  }
  if (key == 'r' && KeyBoard[8].getColor()==0) {
    KeyBoard[8].pressed(true);
    KeyBoard[8].playNote(KeyBoard[8].pitch, true);
  }
  if (key == 'y' && KeyBoard[9].getColor()==0) {
    KeyBoard[9].pressed(true);
    KeyBoard[9].playNote(KeyBoard[9].pitch, true);
  }
  if (key == 'u' && KeyBoard[10].getColor()==0) {
    KeyBoard[10].pressed(true);
    KeyBoard[10].playNote(KeyBoard[10].pitch, true);
  }
  if (key == 'i' && KeyBoard[11].getColor()==0) {
    KeyBoard[11].pressed(true);
    KeyBoard[11].playNote(KeyBoard[11].pitch, true);
  }
}

void keyReleased() {
  if (key == 's' && KeyBoard[0].getColor() == 200) {
    KeyBoard[0].pressed(false);
    KeyBoard[0].playNote(KeyBoard[0].pitch, false);
  }
  if (key == 'd' && KeyBoard[1].getColor() == 200) {
    KeyBoard[1].pressed(false);
    KeyBoard[1].playNote(KeyBoard[1].pitch, false);
  }
  if (key == 'f' && KeyBoard[2].getColor() == 200) {
    KeyBoard[2].pressed(false);
    KeyBoard[2].playNote(KeyBoard[2].pitch, false);
  }
  if (key == 'g' && KeyBoard[3].getColor() == 200) {
    KeyBoard[3].pressed(false);
    KeyBoard[3].playNote(KeyBoard[3].pitch, false);
  }
  if (key == 'h' && KeyBoard[4].getColor() == 200) {
    KeyBoard[4].pressed(false);
    KeyBoard[4].playNote(KeyBoard[4].pitch, false);
  }
  if (key == 'j' && KeyBoard[5].getColor() == 200) {
    KeyBoard[5].pressed(false);
    KeyBoard[5].playNote(KeyBoard[5].pitch, false);
  }
  if (key == 'k' && KeyBoard[6].getColor() == 200) {
    KeyBoard[6].pressed(false);
    KeyBoard[6].playNote(KeyBoard[6].pitch, false);
  }
  if (key == 'e' && KeyBoard[7].getColor() == 200) {
    KeyBoard[7].pressed(false);
    KeyBoard[7].playNote(KeyBoard[7].pitch, false);
  }
  if (key == 'r' && KeyBoard[8].getColor() == 200) {
    KeyBoard[8].pressed(false);
    KeyBoard[8].playNote(KeyBoard[8].pitch, false);
  }
  if (key == 'y' && KeyBoard[9].getColor() == 200) {
    KeyBoard[9].pressed(false);
    KeyBoard[9].playNote(KeyBoard[10].pitch, false);
  }
  if (key == 'u' && KeyBoard[10].getColor() == 200) {
    KeyBoard[10].pressed(false);
    KeyBoard[10].playNote(KeyBoard[11].pitch, false);
  }
  if (key == 'i' && KeyBoard[11].getColor() == 200) {
    KeyBoard[11].pressed(false);
    KeyBoard[11].playNote(KeyBoard[0].pitch, false);
  }
}

