/**The MIT License (MIT)
Copyright (c) 2018 by ArtSuzhou 
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
 

/*V5 adding rotary encoder*/
/*V5c adding the setting mode for display
 * 
 */
/*
 *  GND ----[NTC]---*---[100k]---- 3.3V
 *                  |
 *                  |
 *                  A0
*/


/********************************/
// include the library code
#include <Wire.h> 
#include <LiquidCrystal.h>
#include <EEPROM.h>

const int numRows = 2;
const int numCols = 16;
/**********************************************************/

// initialize the library with the numbers of the interface pins. SDA-->A4, SCL-->A5
LiquidCrystal lcd(4,5,6,7,8,9);  // set the LCD address to 0x27 for a 16 chars and 2 line display
/*********************************************************/

// which analog pin to connect
#define THERMISTORPIN A0      
// resistance at 25 degrees C
#define THERMISTORNOMINAL 100000      
// temp. for nominal resistance (almost always 25 C)
#define TEMPERATURENOMINAL 25   
// how many samples to take and average, more takes longer
// but is more 'smooth'
#define NUMSAMPLES 5
// The beta coefficient of the thermistor (usually 3000-4000)
#define BCOEFFICIENT 3950
// the value of the 'other' resistor
#define SERIESRESISTOR 1600000    
// number cycle alarm
#define NUMALARM 5
 
uint16_t samples[NUMSAMPLES];

int led =13; // led is at pin 13
int temp_pin = 11; //12V power relay pin
int buzz_pin = 12; //pin for buzzer
int counter;
int set_mode = 0; //if in the temp. set mode

// Used for generating interrupts using CLK signal
const int PinA = 3; // A = CLK
// Used for reading DT signal
const int PinB = 2;  // B = DT
// Used for the push button switch
const int PinSW = A5;  // SW = SW

int    alarm_state = EEPROM.read(0);
double setTemp= EEPROM.read(1);
double maxtemp= EEPROM.read(2); 
double newTemp = setTemp;
float  temp;

void setup()
{
  Serial.begin(115200);
  //analogReference(EXTERNAL);
  pinMode (led,OUTPUT);  // make led or pin13 an output
  pinMode (temp_pin,OUTPUT);  // make temp_pin or pin4 an output for relay
  pinMode (buzz_pin,OUTPUT);  // make buzz_pin an output for buzzer

   // Rotary pulses are INPUTs
  pinMode(PinA, INPUT);
  pinMode(PinB, INPUT);
  // Switch is floating so use the in-built PULLUP so we don't need a resistor
  pinMode(PinSW, INPUT_PULLUP);
  // Attach the routine to service the interrupts
  attachInterrupt(digitalPinToInterrupt(PinA), isr, FALLING);    //routine de service d'interruption 

  // Ready to go!
  Serial.println("Start");
  
  lcd.begin(numCols,numRows);
  // print a message.
  introScreen();
  lcd.clear(); // clear the lcd
  
  counter = 0; 
  if (setTemp == 255){   
    setTemp=110.00;                                        
    EEPROM.update (1,setTemp);
    }; //set default temp target to 110 *c if not set
  if (maxtemp == 255){
    maxtemp=temp;
    };
  if (alarm_state != 1){
    alarm_state=0;
    digitalWrite (led, 0);
    digitalWrite (temp_pin, 0);
    }
    else 
    {
    digitalWrite (led, 1); // turn on the led
    digitalWrite (temp_pin, 1); // turn off the relay  
    };
}

/*********************************************************/

void loop(){
  counter++;
  getTemp(); // read the actual temperature 
  lcd.setCursor (0,0);   // set the cursor to 0,0
  lcd.print("                ");
  lcd.setCursor (0,0);   // set the cursor to 0,0
  lcd.print("Temp = ");
  lcd.print(temp);   
  lcd.print(" *C");
  
  // if rotary encoder is pushed  
  if ((!digitalRead(PinSW))) {      // PinSW = 8 
   maxtemp=0;
   //while (!digitalRead(PinSW))
   digitalWrite(buzz_pin, HIGH);  // Signal setting reset
   delay(100);
   digitalWrite(buzz_pin, LOW);
   lcd.clear();
   Serial.println("Reset");
   lcd.setCursor (0,0);   // set the cursor to 0,0
   lcd.print ("  Reset Done");
   lcd.setCursor (0,1);   // set the cursor to 0,0
   if (alarm_state == 1){
      alarm_state=0;
      lcd.print (" Alarm Cleared");
      EEPROM.update (0,alarm_state); 
    }
    else{
      lcd.print ("Max. Temp Reset");
    }
    delay(1000);
  }

   setTemp = EEPROM.read(1); // read the setTemp on the eeprom

   if (temp > setTemp) // if the temperature exceeds your chosen setTemp
   {
   digitalWrite (led, 1); // turn on the led
   digitalWrite (temp_pin, 1); // turn off the relay
   alarm_state=1; // active the alarme 

   lcd.clear();
   lcd.setCursor (0,0);
   lcd.print ("****Caution****");
   lcd.setCursor (0,1);    
   lcd.print ("Thermal Runaway"); // Print thermal runaway protection activated

   alarm(); //sound buzzer
   }
   else 
   {
   if (alarm_state !=1){
   digitalWrite (led,0);
   digitalWrite (temp_pin, 0); // turn the power on if no alarm
   }
 }

   if (temp > maxtemp) {   //update the maxtemp
   maxtemp = temp;  
   }

   lcd.setCursor (0,1);   // set the cursor to 0,1
   lcd.print("                ");
   lcd.setCursor (0,1);   // set the cursor to 0,1
   if (counter < 3) {
   if (alarm_state == 1){
   lcd.print ("Thermal Runaway"); // Print thermal runaway protection activated
   delay(1000);
   lcd.setCursor (0,1);    
   lcd.print("                ");
   lcd.setCursor (0,1);
   lcd.print ("[Press to Reset]"); 
   }
   else {
   lcd.print ("[Power is Good]");  // Print Power is normal
   }
  }
   else {
   if (counter >=3 && counter <5){
   lcd.print ("Set To "); // Print set to and your ideal temperature in C
   lcd.print (setTemp, 2);
   lcd.print (" *C");
 }
   else {
   lcd.print ("Max. = "); // Print set to and your max. temperature in C
   lcd.print (maxtemp, 2);
   lcd.print (" *C");  }
   if (counter == 6) {
    counter = 0;
  }
}

while (set_mode) {
   lcd.clear();
   lcd.setCursor(0, 0);
   lcd.print("Push to Program");
   lcd.setCursor(0, 1);
   lcd.print("Set Temp =");
   lcd.print(newTemp, 0);
   lcd.print (" *C");
   delay(1000);
    // Write out to serial monitor the value and direction
   Serial.print(newTemp > setTemp ? "Up  :" : "Down:");
   Serial.println(newTemp);

   // Is someone pressing the rotary switch?
   if ((!digitalRead(PinSW))) {
   setTemp = newTemp;
   EEPROM.update (1,setTemp);

   digitalWrite(buzz_pin, HIGH);
   delay(100);
   digitalWrite(buzz_pin, LOW); 
   lcd.setCursor(0, 0);
   lcd.print("                ");
   lcd.setCursor(0, 0);
   lcd.print("New Temp. Set");

   setTemp = newTemp ;
   Serial.println("New Temp Set");
   set_mode = 0;
   
  }
}
  
Serial.print("Set Temperature "); 
Serial.println(setTemp);  // Print the setTemp in the serial montior
Serial.print("Alarm State "); 
Serial.println(alarm_state);  // Print the Alarm State in the serial montior

EEPROM.update (0,alarm_state); /* write the most recent setTemp in eeprom data stoage
  so that if the power is disconnected, you alarm state is saved!*/
EEPROM.update (1,setTemp); /* write the most recent setTemp in eeprom data stoage
  so that if the power is disconnected, you setTemp is saved!*/
EEPROM.update (2,maxtemp); /* write the most recent maxtemp in eeprom data stoage*/
delay(1000); // wait 1000 milliseconds            
}


void introScreen()
{
  lcd.setCursor(3, 0);
  lcd.print("3D PRINTER");
  lcd.setCursor(3, 1);
  lcd.print("WATCH  DOG");
  delay(2000);
  lcd.clear();
}

void isr ()  {
  static unsigned long lastInterruptTime = 0;
  unsigned long interruptTime = millis();
  // If interrupts come faster than 5ms, assume it's a bounce and ignore
  if (interruptTime - lastInterruptTime > 5) {
    if (digitalRead(PinB) == LOW)
    {
      newTemp-- ; 
    }
    else {
      newTemp++ ; 
    }
    // Restrict value from 50 to +300
    newTemp = min(300, max(50, newTemp));
    // Keep track of when we were here last (no more than every 5ms)
    lastInterruptTime = interruptTime;
    set_mode = 1;                            
  }
}

void getTemp() {
  uint8_t i;
  float average;

  // take N samples in a row, with a slight delay
  for (i=0; i< NUMSAMPLES; i++) {
   samples[i] = analogRead(THERMISTORPIN);
   delay(10);
  }
  // average all the samples out
  average = 0;
  for (i=0; i< NUMSAMPLES; i++) {
     average += samples[i];
  }
  average /= NUMSAMPLES;
 
  Serial.print("Average analog reading "); 
  Serial.println(average);
  // convert the value to resistance
  //average = 1023 / average - 1;                     //    ERROR  donne 0 pour le moment 1023/1023 - 1 = 0  
  //average = SERIESRESISTOR / average;
  Serial.print("Thermistor resistance "); 
  Serial.println(average);
  ------------ // convertion thermistance ---------------
  //temp = average / THERMISTORNOMINAL;     // (R/Ro)    Donne la valeur moyenne de la température mesurée sur Nsamples
  //temp = log(temp);                  // ln(R/Ro)
  //temp /= BCOEFFICIENT;                   // 1/B * ln(R/Ro)
  //temp += 1.0 / (TEMPERATURENOMINAL + 273.15); // + (1/To)
  //temp = 1.0 / temp;                 // Invert
  //temp -= 273.15;                         // convert to C
  temp = average;
  Serial.print("Temperature "); 
  Serial.print(temp);
  Serial.println(" *C");
}

void alarm()
{
   uint8_t i;
   for (i=0; i< NUMALARM; i++) {
   digitalWrite(buzz_pin, HIGH);
   delay(500);
   digitalWrite(buzz_pin, LOW); 
   delay(500);
   }
 }

