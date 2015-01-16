import themidibus.*; 

MidiBus midiBus;

Keys[] KeyBoard0 = new Keys[12];
Keys[] KeyBoard1 = new Keys[12];
Keys[] KeyBoard2 = new Keys[12];

void setup() { 
  size(351, 301, P3D);
  
  //make keys for middle octave
  KeyBoard0[0] = new WhiteKeys(1, 0, 100, 60);
  KeyBoard0[1] = new WhiteKeys(2, 50, 100, 62);
  KeyBoard0[2] = new WhiteKeys(3, 150, 100, 64);
  KeyBoard0[3] = new WhiteKeys(1, 150, 100, 65);
  KeyBoard0[4] = new WhiteKeys(2, 200, 100, 67);
  KeyBoard0[5] = new WhiteKeys(2, 250, 100, 69);
  KeyBoard0[6] = new WhiteKeys(3, 350, 100, 71);
  KeyBoard0[7] = new BlackKeys(35, 100, 61);
  KeyBoard0[8] = new BlackKeys(85, 100, 63);
  KeyBoard0[9] = new BlackKeys(185, 100, 66);
  KeyBoard0[10] = new BlackKeys(235, 100, 68);
  KeyBoard0[11] = new BlackKeys(285, 100, 70);
 
 //make keys for higher octave
  KeyBoard1[0] = new WhiteKeys(1, 0, 100, 72);
  KeyBoard1[1] = new WhiteKeys(2, 50, 100, 74);
  KeyBoard1[2] = new WhiteKeys(3, 150, 100, 76);
  KeyBoard1[3] = new WhiteKeys(1, 150, 100, 77);
  KeyBoard1[4] = new WhiteKeys(2, 200, 100, 79);
  KeyBoard1[5] = new WhiteKeys(2, 250, 100, 81);
  KeyBoard1[6] = new WhiteKeys(3, 350, 100, 83);
  KeyBoard1[7] = new BlackKeys(35, 100, 73);
  KeyBoard1[8] = new BlackKeys(85, 100, 75);
  KeyBoard1[9] = new BlackKeys(185, 100, 78);
  KeyBoard1[10] = new BlackKeys(235, 100, 80);
  KeyBoard1[11] = new BlackKeys(285, 100, 82);
  
  //make keys for lower octave
  KeyBoard2[0] = new WhiteKeys(1, 0, 100, 48);
  KeyBoard2[1] = new WhiteKeys(2, 50, 100, 50);
  KeyBoard2[2] = new WhiteKeys(3, 150, 100, 52);
  KeyBoard2[3] = new WhiteKeys(1, 150, 100, 53);
  KeyBoard2[4] = new WhiteKeys(2, 200, 100, 55);
  KeyBoard2[5] = new WhiteKeys(2, 250, 100, 57);
  KeyBoard2[6] = new WhiteKeys(3, 350, 100, 59);
  KeyBoard2[7] = new BlackKeys(35, 100, 49);
  KeyBoard2[8] = new BlackKeys(85, 100, 51);
  KeyBoard2[9] = new BlackKeys(185, 100, 54);
  KeyBoard2[10] = new BlackKeys(235, 100, 56);
  KeyBoard2[11] = new BlackKeys(285, 100, 58);
  

  for (int i=0; i<KeyBoard0.length; i++) {
    KeyBoard0[i].show();
  }

  midiBus = new MidiBus(this, 0, 2);
}

void draw() {
}

void keyPressed() {
  if (key == 's' && KeyBoard0[0].getColor()==255) {
    KeyBoard0[0].pressed(true);
    KeyBoard0[0].playNote(KeyBoard0[0].pitch, true);
  }
  if (key == 'd' && KeyBoard0[1].getColor()==255) {
    KeyBoard0[1].pressed(true);
    KeyBoard0[1].playNote(KeyBoard0[1].pitch, true);
  }
  if (key == 'f' && KeyBoard0[2].getColor()==255) {
    KeyBoard0[2].pressed(true);
    KeyBoard0[2].playNote(KeyBoard0[2].pitch, true);
  }
  if (key == 'g' && KeyBoard0[3].getColor()==255) {
    KeyBoard0[3].pressed(true);
    KeyBoard0[3].playNote(KeyBoard0[3].pitch, true);
  }
  if (key == 'h' && KeyBoard0[4].getColor()==255) {
    KeyBoard0[4].pressed(true);
    KeyBoard0[4].playNote(KeyBoard0[4].pitch, true);
  }
  if (key == 'j' && KeyBoard0[5].getColor()==255) {
    KeyBoard0[5].pressed(true);
    KeyBoard0[5].playNote(KeyBoard0[5].pitch, true);
  }
  if (key == 'k' && KeyBoard0[6].getColor()==255) {
    KeyBoard0[6].pressed(true);
    KeyBoard0[6].playNote(KeyBoard0[6].pitch, true);
  }
  if (key == 'e' && KeyBoard0[7].getColor()==0) {
    KeyBoard0[7].pressed(true);
    KeyBoard0[7].playNote(KeyBoard0[7].pitch, true);
  }
  if (key == 'r' && KeyBoard0[8].getColor()==0) {
    KeyBoard0[8].pressed(true);
    KeyBoard0[8].playNote(KeyBoard0[8].pitch, true);
  }
  if (key == 'y' && KeyBoard0[9].getColor()==0) {
    KeyBoard0[9].pressed(true);
    KeyBoard0[9].playNote(KeyBoard0[9].pitch, true);
  }
  if (key == 'u' && KeyBoard0[10].getColor()==0) {
    KeyBoard0[10].pressed(true);
    KeyBoard0[10].playNote(KeyBoard0[10].pitch, true);
  }
  if (key == 'i' && KeyBoard0[11].getColor()==0) {
    KeyBoard0[11].pressed(true);
    KeyBoard0[11].playNote(KeyBoard0[11].pitch, true);
  }
}

void keyReleased() {
  if (key == 's' && KeyBoard0[0].getColor() == 200) {
    KeyBoard0[0].pressed(false);
    KeyBoard0[0].playNote(KeyBoard0[0].pitch, false);
  }
  if (key == 'd' && KeyBoard0[1].getColor() == 200) {
    KeyBoard0[1].pressed(false);
    KeyBoard0[1].playNote(KeyBoard0[1].pitch, false);
  }
  if (key == 'f' && KeyBoard0[2].getColor() == 200) {
    KeyBoard0[2].pressed(false);
    KeyBoard0[2].playNote(KeyBoard0[2].pitch, false);
  }
  if (key == 'g' && KeyBoard0[3].getColor() == 200) {
    KeyBoard0[3].pressed(false);
    KeyBoard0[3].playNote(KeyBoard0[3].pitch, false);
  }
  if (key == 'h' && KeyBoard0[4].getColor() == 200) {
    KeyBoard0[4].pressed(false);
    KeyBoard0[4].playNote(KeyBoard0[4].pitch, false);
  }
  if (key == 'j' && KeyBoard0[5].getColor() == 200) {
    KeyBoard0[5].pressed(false);
    KeyBoard0[5].playNote(KeyBoard0[5].pitch, false);
  }
  if (key == 'k' && KeyBoard0[6].getColor() == 200) {
    KeyBoard0[6].pressed(false);
    KeyBoard0[6].playNote(KeyBoard0[6].pitch, false);
  }
  if (key == 'e' && KeyBoard0[7].getColor() == 200) {
    KeyBoard0[7].pressed(false);
    KeyBoard0[7].playNote(KeyBoard0[7].pitch, false);
  }
  if (key == 'r' && KeyBoard0[8].getColor() == 200) {
    KeyBoard0[8].pressed(false);
    KeyBoard0[8].playNote(KeyBoard0[8].pitch, false);
  }
  if (key == 'y' && KeyBoard0[9].getColor() == 200) {
    KeyBoard0[9].pressed(false);
    KeyBoard0[9].playNote(KeyBoard0[9].pitch, false);
  }
  if (key == 'u' && KeyBoard0[10].getColor() == 200) {
    KeyBoard0[10].pressed(false);
    KeyBoard0[10].playNote(KeyBoard0[10].pitch, false);
  }
  if (key == 'i' && KeyBoard0[11].getColor() == 200) {
    KeyBoard0[11].pressed(false);
    KeyBoard0[11].playNote(KeyBoard0[11].pitch, false);
  }
}

