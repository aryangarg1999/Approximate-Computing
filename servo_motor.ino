
#include <Servo.h>

Servo servo ;

void setup() {
  
  servo.attach(8);
  Serial.begin(9600);
  servo.write(0);       // Servo motor works on the principle of PULSE WIDTH MODULATION and works by the angle detection method
  //delay(2000);
  
}

void loop() {

//  Serial.print(servo.write());
 // Serial.print("\n");
  servo.write(90);
  Serial.print(90);
  Serial.print("\n");
  delay(1000);
  
  
  
  
  
  //delay(1000);
  
  //delay(1000);
  servo.write(0);
  Serial.print(0);
  Serial.print("\n");
  
  delay(1000) ;

}
