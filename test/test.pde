#include <MeetAndroid.h>
	
long baud = 115200;
void setup() {
//set bluetooth
Serial2.begin(baud); //serial2 on pins 14 and 15
Serial.begin(115200); //computer side com port
}
void loop() {
if (Serial2.available() > 0){
char in = Serial2.read();
Serial.print(in);
}
}
