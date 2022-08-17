
/* Code taken from Bas on Tech "Use only 1 Pin to read 4 buttons 
 (KC11B04 4X1 AD KEYPAD) - Arduino tutorial #29
 */

const int AD_PIN = A0;  //0/1



void setup() {
    Serial.begin(57600);
}

void loop() {
  
  int adValue = analogRead(AD_PIN);
  Serial.println(buttonFromValue(adValue));
}

byte buttonFromValue(int adValue) {

  if(adValue > 300 && adValue < 500) {
    return 1;
  }

  if(adValue > 500 && adValue < 700) {
    return 2;
  }

  if(adValue > 700 && adValue < 900) {
    return 3;
  }

  if(adValue > 900) {
    return 4;
  }

    return 0;
}




  // Convert the analog reading (which goes from 0 - 1023) to a voltage (0 - 5V):
//  float voltage = sensorValue * (3.3 / 1023.0);
  // put your main code here, to run repeatedly:

  
