/*
                      *******************
                      *Simon says ATtiny*
                      *******************

   Written by: ElectronPlant
   Github: https://github.com/ElectronPlant/Simon_says_ATtiny

   Released under the Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)
   license (https://creativecommons.org/licenses/by-sa/4.0/)
 ________________________________________________
   Simon says code for ATtiny_85

   V3:
    -) Analog thresholds corrected.
    -) LED glitches eliminated.
    -) Speaker support added. New core installed:
       https://github.com/SpenceKonde/ATTinyCore
   V4:
    -) Analog reading averaging
*/

// Pin definition
// LED pins
/*        ::Note::
 *  LED pins shouldn't be changed. 
 *  Because the way they are connected if pins aren't 
 *  changed all at the same time glitches occur and therefore the LEDs 
 *  will blink for a fraction of a second. To correct this the function 
 *  "digitalWrite()" function was replaced by "PORTB = B00000XXX". 
 *  If any change is done on the LEDs pins this should be adjusted. More 
 *  information can be read at:
 *  http://playground.arduino.cc/Learning/PortManipulation *  
 */
#define LED_1 2
#define LED_2 1
#define LED_3 0
// Buttons pin
#define ANALOG_PIN 3  // This is the analog read pin (pin 3)
// Speaker pin
/*        ::Note::
 *  In the core notes is advised to use the "tone()" function on pin 4.  
 *  https://github.com/SpenceKonde/ATTinyCore
 */
#define SPEAKER 4

// Tones
#define RED 200
#define YELLOW 400
#define GREEN 600
#define BLUE 800
#define DURATION 100

// Analog thresholds
#define BUTTON1_THRES 895  // Button 1
#define BUTTON2_THRES 636  // Button 2
#define BUTTON3_THRES 383  // Button 3
#define BUTTON4_THRES 150  // Button 4

/* Sequence length. It can be increased but if it is increased too much 
 * it may cause errors during compilation:

  +Global variables use 226 bytes (88%) of dynamic memory, leaving 
  30 bytes for local variables. Maximum is 256 bytes.
   Low memory available, stability problems may occur
   or
  +Not enough memory; see http://www.arduino.cc/en/Guide/Troubleshooting#size 
  for tips on reducing your footprint.
   Error compiling for board ATtiny25/45/85.
 */
#define MAX_LENGTH 20  // sequence reduced to have a winnable game (-_-)

// Variables
byte sequence[MAX_LENGTH];  // Array that stores the sequence
byte done = 0;  // Current level
int speed = 800;  // Delay time for the sequence display


// Functions

int getAnalogValue(byte pinNum){  // gets the averaged analog input
  /* To reduce the effects of noise in the measurement the final value will
   *  be averaged from 5 readings.
   *  The readings will be done with no delays to avoid having any effect if a
   *  button is pressed while getting the measurements(the capacitor will 
   *  help with this). This will take 500us to complete.
   */
   int value = 0;
   for(byte i = 0; i < 5; i++){  // Get the measurements and add them
    value += analogRead(pinNum);
   }
   value = value/5;  // Calculate the average
   return value;
}


byte readbutton() { // Checks what button is pressed
  /* The button pressed if coded the following way
      + 0 for no button pressed or error
      + 1 for button 1 --> Red
      + 2 for button 2 --> Green
      + 3 for button 3 --> Yellow
      + 4 for button 4 --> Blue
      Each button has a Threshold defined. To avoid debounce effects 
      in the button the buttons are read once, then it will wait for 
      50 ms and read again. Only if the two reading are the same the
      button will be considered as pressed.

  */
  byte button = 0;
  int analog = getAnalogValue(ANALOG_PIN);
  if (analog >= BUTTON1_THRES) {  // Button 1
    button = 1;
  } else if (analog >= BUTTON2_THRES) {  // Button 2
    button = 2;
  } else if (analog >= BUTTON3_THRES) {  // Button 3
    button = 3;
  } else if (analog >= BUTTON4_THRES) {  // Button 4
    button = 4;
  }
  if (button != 0) {  // Only wait if the button has been pressed.
    delay(50);
    analog = analogRead(ANALOG_PIN);
    if (analog >= BUTTON1_THRES) {  // Button 1
      if (button != 1) button = 0;
    } else if (analog >= BUTTON2_THRES) {  // Button 2
      if (button != 2) button = 0;
    } else if (analog >= BUTTON3_THRES) {  // Button 3
      if (button != 3) button = 0;
    } else if (analog >= BUTTON4_THRES) {  // Button 4
      if (button != 4) button = 0;
    }
  }
  return button;
}


void ledplay(byte k, boolean sound) { // lights the indicated LED and plays the tone associated to it
  switch (k) {
    case 1:  // Red
      PORTB = B00000100;
      if (sound) tone(SPEAKER, RED, DURATION);
      break;
    case 2:  // Green
      PORTB = B00000011;
      if (sound) tone(SPEAKER, GREEN, DURATION);
      break;
    case 3:  // Yellow
      PORTB = B00000001;
      if (sound) tone(SPEAKER, YELLOW, DURATION);
      break;
    case 4:  // Blue
      PORTB = B00000110;
      if (sound) tone(SPEAKER, BLUE, DURATION);
      break;
    default:  // Off
      PORTB = B00000000;
      break;
  }
}


void playsequence(byte* sec, byte len) { // Play the stored sequence
  for (byte i = 0; i < len; i++) {  // repeat for every element of the array
    delay(speed);
    ledplay(*(sec + i), true);  // Light the LED and play the sound linked to the current element
    delay(speed);
    // Turn off LEDs
    PORTB = B00000000;
  }
}

boolean checksequence(byte* sec, byte len) { // Check if the player copies the 
                                             // sequence (return true) or of not (return false).
  for (byte i = 0; i < len; i++) {  //repeat this for every element in the array
    unsigned long ttime = millis();  // sets the time to reset the game if no key is pressed
    // Wait for no button to be pressed
    while (readbutton() != 0) {
      delay(10);
      if (millis() - ttime > 30000) { // check if the reset time has passed
        PORTB = B00000000;
        return false;
      }
    }
    // Turn off LEDs
    PORTB = B00000000;
    byte k = 0;
    // wait for any pressed button
    while (k == 0) {
      k = readbutton();
      delay(10);
      if (millis() - ttime > 30000) {  // check if the reset time has passed
        PORTB = B00000000;
        return false;
      }
    }
    // Turn on LED
    ledplay(k, true);
    delay(50);
    // check if the button pressed is wrong
    if (k != *(sec + i)) {  // compares the button with the element of the array
      while (readbutton() != 0) {  // wait for button to be released
        delay(10);
      }
      // The button isn't correct
      tone(SPEAKER, 100, 500);
      for (byte j = 0; j < 50; j++){  // Turn all LEDs on
        PORTB = B00000010;
        delay(5);
        PORTB = B00000101;
        delay(5);
      }
      //delay(500);
      for (byte j = 0; j < len; j++){
        // PORTB = B00000000;  // turn LEDs off
        // tone(SPEAKER, 100, 50);
        tone(SPEAKER, 100, 50);
        PORTB = B00000000;
        delay (300);
        tone(SPEAKER, 300, 50);
        ledplay(*(sec + i), false);  // Turn the correct LED on
        delay(300);
      }
      PORTB = 00000000;
      return false;  // the button isn't correct :( game over
    }
  }
  // Sequence completed :)
  while (readbutton() != 0) {
    delay(10);
  }
  PORTB = B00000000;
  return true;
}


void intro() { // Play intro animation
  tone(SPEAKER, 700, 100);
  // Turn red on
  PORTB = B00000100;
  tone(SPEAKER, 300, 200);
  delay(500);
  // Turn green on
  tone(SPEAKER, 200, 100);
  PORTB = B00000011;
  delay(500);
  tone(SPEAKER, 400, 100);
  // Turn yellow on
  PORTB = B00000001;
  tone(SPEAKER, 100, 300);
  delay(500);
  // Turn blue on
  PORTB = B00000110;
  tone(SPEAKER, 700, 50);
  delay(500);
  // Turn all leds off
  PORTB = B00000000;
  tone(SPEAKER, 450, 200);
}


void lose() { // Play lose animation :(
  // Play game over sequence
  tone(SPEAKER, 100, 50);
  for (int i = 0; i < 8; i++) {
    // Turn on leds red and yellow
    PORTB = B00000101;
    tone(SPEAKER, 300, 50);
    delay(100);
    // Turn on leds 1 and 4
    PORTB = B00000010;
    delay(100);
    tone(SPEAKER, 100, 50);
  }
  // Turn off all LEDs
  PORTB = B00000000;
  noTone(SPEAKER);
}


void winSequence(){  // Play the wining sequence :D
  for (int j = 50; j < 1500; j+=5) {
    tone(SPEAKER, j, 10);
    if (j % 10 == 0) {
      PORTB = B00000101;
    } else {
      PORTB = B00000010;
    }
    delay(10);
  }
  for (int j = 1500; j > 50; j-=5) {
    tone(SPEAKER, j, 10);
    if (j % 10 == 0) {
      PORTB = B00000101;
    } else {
      PORTB = B00000010;
    }
    delay(10);
  }
  //PORTB = B00000000;
  delay(100);
  PORTB = B00000101;
  tone(SPEAKER, 800, 100);
  delay(300);
  tone(SPEAKER, 1000, 50);
  delay(150);
  PORTB = B00000010;
  tone(SPEAKER, 1400, 50);
  delay(200);
  tone(SPEAKER, 800, 100);
  delay(150);
  tone(SPEAKER, 1500, 100);
  PORTB = B00000101;
  delay(500);
  PORTB = B00000010;
  delay(500);
  PORTB = B00000000;
}


// Main code
void setup() {
  pinMode(LED_1, OUTPUT);
  pinMode(LED_2, OUTPUT);
  pinMode(LED_3, OUTPUT);
  pinMode(SPEAKER, OUTPUT);
  analogReference(DEFAULT);  // Sets Vcc as reference (not needed)

  // Play intro
  intro();
}

void loop() {
  // Start the game
  // Whait for any button to be pressed
  int key = 0;
  while (key == 0) {
    key = readbutton();
  }
  ledplay(key, true);  // Turn LED on
  while (readbutton() != 0) {  // Wait for the button to be released
  }
  PORTB = B00000000;  // Turn LEDs off
  randomSeed(millis());
  // Game loop
  while (true) {
    // Add one to the sequence
    done++;
    if (done < MAX_LENGTH) {
      sequence[done - 1] = random(1, 5);
      // Play sequence
      playsequence(sequence, done);
      // Check sequence
      if (!checksequence(sequence, done)) {  // Game over, reset the game
        lose();  // Play game over animation
        done = 0;
        speed = 800;
        break;
      }
      if (speed > 100) {  // // Increase the speed of the game (to a limit)
        speed -= speed / 4;  
      }
      delay(250);

    } else {  // Game completed, reset the game
      winSequence();  // play win animation
      done = 0;
      speed = 800;
      break;
    }
  }
}
