/*
  Receives Test Events from your phone.
  After it gets a test message the led 13 will blink
  for one second.
*/
 
#include <MeetAndroid.h>

MeetAndroid meetAndroid;
int led2 = 2;//pins
int led3 = 3;
int led4 = 4;
int led5 = 5;
int led6 = 6;
int led7 = 7;
int led8 = 8;
int led9 = 9;

int ld2; //test on/off gia to pin2
int ld3;
int ld4;
int ld5;
int ld6;
int ld7;
int ld8;
int ld9;

void setup()  
{
  // use the baud rate your bluetooth module is configured to 
  // not all baud rates are working well, i.e. ATMEGA168 works best with 57600
  Serial.begin(57600); 
  
  // register callback functions, which will be called when an associated event occurs.
  // - the first parameter is the name of your function (see below)
  // - match the second parameter ('A', 'B', 'a', etc...) with the flag on your Android application
  
  //vlepei ti flag exei erthei kai kalei antistoixi function
  meetAndroid.registerFunction(leda, 'A'); 
  meetAndroid.registerFunction(ledb, 'B');  
  meetAndroid.registerFunction(ledc, 'C');  
  meetAndroid.registerFunction(ledd, 'D');  
  meetAndroid.registerFunction(lede, 'E');  
  meetAndroid.registerFunction(ledf, 'F');  
  meetAndroid.registerFunction(ledg, 'G');  
  meetAndroid.registerFunction(ledh, 'H');  

//dilwnoume oti ta antistoixa pins einai eksodoi
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led4, OUTPUT);
  pinMode(led5, OUTPUT);
  pinMode(led6, OUTPUT);
  pinMode(led7, OUTPUT);
  pinMode(led8, OUTPUT);
  pinMode(led9, OUTPUT);
}

void loop()
{
  meetAndroid.receive(); // you need to keep this in your loop() to receive events 
  switch (ld2) {
   case 0:
     digitalWrite(led2, HIGH);
     break;
   case 1:
     digitalWrite(led2, LOW);
     break;
   }

  switch (ld3) {
   case 0:
     digitalWrite(led3, HIGH);
     break;
   case 1:
     digitalWrite(led3, LOW);
     break;
   }
  switch (ld4) {
   case 0:
     digitalWrite(led4, HIGH);
     break;
   case 1:
     digitalWrite(led4, LOW);
     break;
   }
   
  switch (ld5) {
   case 0:
     digitalWrite(led5, HIGH);
     break;
   case 1:
     digitalWrite(led5, LOW);
     break;
   }
  
  switch (ld6) {
   case 0:
     digitalWrite(led6, HIGH);
     break;
   case 1:
     digitalWrite(led6, LOW);
     break;
   }
   
  switch (ld7) {
   case 0:
     digitalWrite(led7, HIGH);
     break;
   case 1:
     digitalWrite(led7, LOW);
     break;
   }

  switch (ld8) {
   case 0:
     digitalWrite(led8, HIGH);
     break;
   case 1:
     digitalWrite(led8, LOW);
     break;
   }
  
  switch (ld9) {
   case 0:
     digitalWrite(led9, HIGH);
     break;
   case 1:
     digitalWrite(led9, LOW);
     break;
   }
   
   
}

//oi functions tsekaroun an exei erthei 0 or 1
void leda(byte flag, byte numOfValues) { ld2 = meetAndroid.getInt(); }
void ledb(byte flag, byte numOfValues) { ld3 = meetAndroid.getInt(); }
void ledc(byte flag, byte numOfValues) { ld4 = meetAndroid.getInt(); }
void ledd(byte flag, byte numOfValues) { ld5 = meetAndroid.getInt(); }
void lede(byte flag, byte numOfValues) { ld6 = meetAndroid.getInt(); }
void ledf(byte flag, byte numOfValues) { ld7 = meetAndroid.getInt(); }
void ledg(byte flag, byte numOfValues) { ld8 = meetAndroid.getInt(); }
void ledh(byte flag, byte numOfValues) { ld9 = meetAndroid.getInt(); }




