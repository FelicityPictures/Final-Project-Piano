Final-Project-Piano
===================
Final project for APCS, Mr. K, period 6. Vivian Li and Felicity Ng are creating a virtual interactive piano using Processing. If time allows, additional features would be added.

FEATURES: 

Playable 1 octave piano

Uses keyboard and mouse clicks

PLANNED:

Other Modes planned 

Ideas:

Different instrument sounds




1/6/15:

Created Key Class

Worked on making Keys object
        
1/7/15: 

Updated main Piano class. Initialized Keys.

1/8/15: 

Fixed Piano(main) class: Keyboard now renders

Implemented KeyPressed and KeyReleased methods. It currently only changes the color of the key. Layering issue: black key is cut off.

Created custom whiteKeys shape. To be implemented.
	
Planned: Convert Keys into an array.

1/9/15:

Seperated Keys into 2 different child classes: BlackKeys and WhiteKeys

Implemented custom whiteKeys shape

Planned: reintroduce keyPressed and keyReleased

1/10/15:

Added right, center, and left whiteKeys shapes

Continued to work on pressed() method

1/12/15:

Reimplemented pressed() methods. Currently only changed color, not sound

1/13/15:

Put keys into array. 

Start work on adding notes to piano. Planned to use minim.

1/14/15:

Implemented keyPressed() and keyReleased() for all keys

For personal reference: http://www.cs.cmu.edu/~music/cmsip/readings/MIDI%20tutorial%20for%20programmers.html

1/15/15:

Implemented notes/sound

1/16/15:

Added 2 more octaves

1/18/15:

Added title screen //need to position text and buttons

Added settings screen

implemented octave meter and octave up and down works

