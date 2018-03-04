# Simon_says_ATtiny


Simon game on ATtiny45/85 microcontroller

![Simon_says_ATtiny](https://github.com/ElectronPlant/Simon_says_ATtiny/blob/master/Documentation/Simon_says_complete_assembly.jpg)

Simon_says_ATtiny is a simple project implementing the Simon game on a PCB controlled from a ATtiny45/85.

Repository contents:
--------------------

 +) Documentation: BOM file, Technical specification, drawings...
 
 +) Kicad files: schematic, board and all the required files.
 
 +) Firmware: Arduino code.

Game description:
-----------------
Simon (Simon says) game is an electronic game created by Ralph H. Baer and Howard J. Morrison and it has been available since 1970. The game has four lights (typically red, green, yellow and blue) and four buttons. Each light has one button and one sound, generally a tone, linked to it. The game has two main phases:

  +) Sequence display: during this phase “Simon”, the game, will show the sequence you have to memorize. The sequence is shown by turning the lights one at a time until the sequence is completed. Throughout this phase the corresponding tones linked to the lights will also be played to serve as a memory aid.
  
  +) Coping phase: in this phase the player has to copy the sequence in the same order as displayed previously. To copy the sequence the player has to press the corresponding button linked to the light or tone it needs to copy. If there is a mistake while completing the sequence the game will end at that point.
  
These two sequences are repeated over and over increasing the sequence length until either the player louses or the maximum length sequence is reached. The game starts with a sequence of only length one and its length is increased adding one extra step to the current sequence.
