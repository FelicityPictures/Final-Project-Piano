import themidibus.*; 

MidiBus midiBus;
int currentScreen;
int currentOctave = 0;
int beginX = 125;
int beginY = 150;
int beginW = 100;
int beginH = 30;
int settingsX = 125;
int settingsY = 200;
int settingsW = 100;
int settingsH = 30;

Keys[] KeyBoard0 = new Keys[12];
Keys[] KeyBoard1 = new Keys[12];
Keys[] KeyBoard2 = new Keys[12];
Keys[] temp = new Keys[12];

void setup() { 
  size(351, 301, P3D);
  //noStroke();
  smooth();

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

  midiBus = new MidiBus(this, 0, 2);
}

void draw() {
  switch(currentScreen) {
  case 0: 
    displayTitle(); 
    break;
  case 1: 
    displayPiano(); 
    break;
  case 2:
    displaySettings();
  default: 
    background(0); 
    break;
  }
  if (currentScreen == 1) {
    String s = "Octave " + currentOctave;
    textSize(32);
    text(s,-95,-100, width, height);
  }
  copyKeyBoard();
}

void octaveChange() {
  if (key == CODED) {
    if (keyCode == SHIFT && currentOctave <= 1 && currentOctave > -1) {
      currentOctave--;
      println(currentOctave);
    }
    if (keyCode == CONTROL && currentOctave >= -1 && currentOctave < 1) {
      currentOctave++;
      println(currentOctave);
    }
  }
}

void copyKeyBoard() {
  if (currentOctave == 0) {
    temp = KeyBoard0.clone();
  }
  if (currentOctave == -1) {
    temp = KeyBoard2.clone();
  }
  if (currentOctave == 1) {
    temp = KeyBoard1.clone();
  }
}

void keyPressed() {
  octaveChange();
  if (currentScreen == 1) {
    if (key == 's' && temp[0].getColor()==255) {
      temp[0].pressed(true);
      temp[0].playNote(temp[0].pitch, true);
    }
    if (key == 'd' && temp[1].getColor()==255) {
      temp[1].pressed(true);
      temp[1].playNote(temp[1].pitch, true);
    }
    if (key == 'f' && temp[2].getColor()==255) {
      temp[2].pressed(true);
      temp[2].playNote(temp[2].pitch, true);
    }
    if (key == 'g' && temp[3].getColor()==255) {
      temp[3].pressed(true);
      temp[3].playNote(temp[3].pitch, true);
    }
    if (key == 'h' && temp[4].getColor()==255) {
      temp[4].pressed(true);
      temp[4].playNote(temp[4].pitch, true);
    }
    if (key == 'j' && temp[5].getColor()==255) {
      temp[5].pressed(true);
      temp[5].playNote(temp[5].pitch, true);
    }
    if (key == 'k' && temp[6].getColor()==255) {
      temp[6].pressed(true);
      temp[6].playNote(temp[6].pitch, true);
    }
    if (key == 'e' && temp[7].getColor()==0) {
      temp[7].pressed(true);
      temp[7].playNote(temp[7].pitch, true);
    }
    if (key == 'r' && temp[8].getColor()==0) {
      temp[8].pressed(true);
      temp[8].playNote(temp[8].pitch, true);
    }
    if (key == 'y' && temp[9].getColor()==0) {
      temp[9].pressed(true);
      temp[9].playNote(temp[9].pitch, true);
    }
    if (key == 'u' && temp[10].getColor()==0) {
      temp[10].pressed(true);
      temp[10].playNote(temp[10].pitch, true);
    }
    if (key == 'i' && temp[11].getColor()==0) {
      temp[11].pressed(true);
      temp[11].playNote(temp[11].pitch, true);
    }
  }
}

void keyReleased() {
  if (currentScreen == 1) {
    if (key == 's' && temp[0].getColor() == 200) {
      temp[0].pressed(false);
      //KeyBoard0[0].playNote(KeyBoard0[0].pitch, false);
    }
    if (key == 'd' && temp[1].getColor() == 200) {
      temp[1].pressed(false);
      //KeyBoard0[1].playNote(KeyBoard0[1].pitch, false);
    }
    if (key == 'f' && temp[2].getColor() == 200) {
      temp[2].pressed(false);
      //KeyBoard0[2].playNote(KeyBoard0[2].pitch, false);
    }
    if (key == 'g' && temp[3].getColor() == 200) {
      temp[3].pressed(false);
      //KeyBoard0[3].playNote(KeyBoard0[3].pitch, false);
    }
    if (key == 'h' && temp[4].getColor() == 200) {
      temp[4].pressed(false);
      //KeyBoard0[4].playNote(KeyBoard0[4].pitch, false);
    }
    if (key == 'j' && temp[5].getColor() == 200) {
      temp[5].pressed(false);
      //KeyBoard0[5].playNote(KeyBoard0[5].pitch, false);
    }
    if (key == 'k' && temp[6].getColor() == 200) {
      temp[6].pressed(false);
      //KeyBoard0[6].playNote(KeyBoard0[6].pitch, false);
    }
    if (key == 'e' && temp[7].getColor() == 200) {
      temp[7].pressed(false);
      //KeyBoard0[7].playNote(KeyBoard0[7].pitch, false);
    }
    if (key == 'r' && temp[8].getColor() == 200) {
      temp[8].pressed(false);
      //KeyBoard0[8].playNote(KeyBoard0[8].pitch, false);
    }
    if (key == 'y' && temp[9].getColor() == 200) {
      temp[9].pressed(false);
      //KeyBoard0[9].playNote(KeyBoard0[9].pitch, false);
    }
    if (key == 'u' && temp[10].getColor() == 200) {
      temp[10].pressed(false);
      //KeyBoard0[10].playNote(KeyBoard0[10].pitch, false);
    }
    if (key == 'i' && temp[11].getColor() == 200) {
      temp[11].pressed(false);
      //KeyBoard0[11].playNote(KeyBoard0[11].pitch, false);
    }
  }
}

void displayPiano() {
  background(0, 102, 153, 51);
  for (int i=0; i<temp.length; i++) {
    temp[i].show();
  }
}

void displayTitle() {
  String s = "begin";
  String t = "settings";
  background(0);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("piano", 175, 100);
  rect(beginX, beginY, beginW, beginH);
  textSize(10);
  //fill(0);
  text(s, 50 + (beginW - textWidth(s))/2, 50 + beginH);
  rect(settingsX, settingsY, settingsW, settingsH);
}

void displaySettings() {
} 

void mousePressed() {
  if (currentScreen == 0) {
    if (mouseX > beginX && mouseX < beginX+beginW && mouseY > beginY && mouseY < beginY+beginH) {
      currentScreen = 1;
    }
    if (mouseX > settingsX && mouseX < settingsX+settingsW && mouseY > settingsY && mouseY < settingsY+settingsH) {
      currentScreen = 2;
    }
  }
}

