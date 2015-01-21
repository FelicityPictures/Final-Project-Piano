import themidibus.*; 

MidiBus midiBus;
int currentScreen;
int currentOctave = 0;
int beginX = 115;
int beginY = 150;
int beginW = 120;
int beginH = 30;
int settingsX = 125;
int settingsY = 200;
int settingsW = 100;
int settingsH = 30;
int helpX;
int helpY;
int helpW;
int helpH;

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
    break;
  case 3:
    displayHelp();
    break;
  default: 
    background(0); 
    break;
  }

  copyKeyBoard();
}

void octaveChange() {
  if (key == CODED) {
    if (keyCode == SHIFT && currentOctave <= 1 && currentOctave > -1) {
      currentOctave--;
      //println(currentOctave);
    }
    if (keyCode == CONTROL && currentOctave >= -1 && currentOctave < 1) {
      currentOctave++;
      //println(currentOctave);
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
  background(0, 102, 153);
  String o = "";
  if (currentOctave == -1) {
    o = "Lower";
  }
  if (currentOctave == 0) {
    o = "Middle";
  }
  if (currentOctave == 1) {
    o = "Higher";
  }
  String s = o + " Octave";
  textSize(32);
  fill(255);
  text(s, 0, -100, width, height);
  for (int i=0; i<temp.length; i++) {
    temp[i].show();
  }
  fill(255);
  //instructions
  helpX = 325;
  helpY = 5;
  helpW = 20;
  helpH = 20;
  rect(helpX, helpY, helpW, helpH);
  fill(0);
  textSize(15);
  text("?", 335, 13);
  //settings
  fill(255);
  rect(5, 5, 20, 20);
  fill(0);
  text("S", 15, 13);
}

void displayTitle() {
  String s = "Click to begin";
  String t = "Settings";
  background(0);
  textSize(50);
  textAlign(CENTER, CENTER);
  fill(255);
  text("Tiny Piano", 175, 90);
  rect(beginX, beginY, beginW, beginH);
  textSize(15);
  fill(35, 163, 59);
  text(s, 175, 162);
  fill(255);
  rect(settingsX, settingsY, settingsW, settingsH);
  fill(199, 45, 45);
  text(t, 175, 212);
}

void displaySettings() {
  background(0);
  String v = "Volume:";
  String b = "Background Color:";
  String d = "Display notes?";
  fill(255);
  textSize(50);
  text("Settings", 175, 40);
  textSize(20);
  text(v, 71, 110);
  text(b, 120, 160);
  text(d, 99, 210);
  //for background: Red, Green, Blue?
  //red
  fill(199, 45, 45);
  rect(225, 155, 25, 15);
  //green
  fill(35, 163, 59);
  rect(260, 155, 25, 15);
  //blue
  fill(0, 102, 153);
  rect(295, 155, 25, 15);
  //Volume: Loudish,Loud,Loudest
  fill(255);
  //volume
  rect(130,100,50,25);
  rect(200,100,50,25);
  rect(270,100,50,25);
  //notes?
  rect(185,200,60,25);
  rect(260,200,60,25);
  //volume
  fill(177,15,110);
  textSize(15);
  text("Meh",155,110);
  text("Okay",225,110);
  text("YEAH",295,110);
  fill(0,132,75);
  text("Noob",215,210);
  fill(229,0,122);
  text("Pro",290,210);
  //finished button (Takes you to piano)
  fill(255);
  rect(130,250,90,30);
  fill(0);
  text("Piano time!",175,263);
  
} 

void displayHelp() {
  background(0);
  String h = "To play: press SDFGHJK on your keyboard \n for white keys and ERYUI for black keys.";
  String c = "To change octaves: press CTRL to change \n to a higher octave and SHIFT to change to \n a lower octave.";
  String i = "To change instruments: press any number \n from 0-9";
  textSize(25);
  fill(255);
  text("How to use Tiny Piano", 175, 25);
  textSize(15);
  text(h, 175, 80);
  text(c, 175, 153);
  text(i,175, 225);
  fill(255);
  rect(145, 262, 60, 26);
  fill(0);
  text("Back", 175, 273);
}
void mousePressed() {
  if (currentScreen == 0) {
    if (mouseX > beginX && mouseX < beginX+beginW && mouseY > beginY
      && mouseY < beginY+beginH) {
      currentScreen = 1;
    }
    if (mouseX > settingsX && mouseX < settingsX+settingsW
      && mouseY > settingsY && mouseY < settingsY+settingsH) {
      currentScreen = 2;
    }
  }
  if (currentScreen == 1) {
    if (mouseX > helpX && mouseX < helpX+helpW && mouseY > helpY
      && mouseY < helpY+helpH) {
      currentScreen = 3;
    }
  }
}

