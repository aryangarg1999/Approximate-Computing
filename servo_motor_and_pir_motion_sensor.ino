
#include <Servo.h>

Servo servo ;

int led = 13 ;
int pin = 7 ;
int pin_status = 0;
int pir_state = LOW;

void setup() {

pinMode(pin,INPUT) ;
pinMode(led,OUTPUT) ;
servo.attach(8) ;
Serial.begin(9600);
servo.write(0);


}

void loop() {

pin_status = digitalRead(pin);
Serial.print(pin_status);
Serial.print("\n");

if(pin_status == HIGH)
{
  digitalWrite(led,HIGH);
  delay(1000);
  servo.write(90);
  Serial.print("Angle of servo motor is 90 \n");
  delay(5000);
  servo.write(0);
  Serial.print("angle of servo motor is 0 \n");
  delay(3000);
  
  if(pir_state == LOW)
  {
      Serial.print("Motion Detected \n ");
      pir_state = HIGH ;
      
    
  }
}

else
{
  
  digitalWrite(led,LOW);
  delay(1000);

  if(pir_state == HIGH)
  {
    Serial.print("Motion not detected \n");
    pir_state = LOW ;
    
  }

}

}
