//RUBE GOLDBERG

//include the servo library
#include <Servo.h>

//include the CurieTime Library
#include <CurieTime.h>
#include <LiquidCrystal.h>

//create a servo object called servo1 
Servo servo1;

//instantiate the lcd
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup()
{
 //attach servo1 to pin 9 on the Arduino 101
 servo1.attach(9);
 //start the serial port a@ 9600bps
 Serial.begin(9600);

 //start lcd at 16 x 2
 lcd.begin(16, 2);

 //clear the lcd
 lcd.clear();
}

void loop()
{
 // Tell servo to go to 90 degrees
  servo1.write(90);   
// Pause to get it time to move 
  delay(1000);   
  // Tell servo to go to 90 degrees
  servo1.write(0);   
// Pause to get it time to move 
  delay(1000);                   
 {
 //set cursor to column 0, row 0
 lcd.setCursor(0, 0);
 lcd.print("OOPS!");
 //set cursor to column 0, row 1
 lcd.setCursor(0, 1);
 lcd.print("My Bad!");
  }
}
