
// I mainly have used three sensors in my parking system.... One is PIR MOTION SENSOR for unlocking the gate , ULTRASONIC SENSOR for determining the 
// Whether the parking is vacant or not , and SMOKE SENSOR(MQ-6) for determining the smoke content to prevent the place from FIRE .

#include <Servo.h>

Servo servo;

int pir_motion = 7;
int ultrasonic_trigger = 2 ;
int ultrasonic_echo = 4 ;
int led_ultrasonic = 12;
int led_smoke = 13 ;
int smoke_sensor = A0;
int smoke_threshold = 200;
int ultrasonic_threshold = 50 ;
 



void setup() {

pinMode(pir_motion, INPUT);
servo.attach(8);
servo.write(0);


pinMode(led_ultrasonic,OUTPUT);
pinMode(led_smoke, OUTPUT);
pinMode(ultrasonic_trigger, OUTPUT);
pinMode(ultrasonic_echo, INPUT);
pinMode(smoke_sensor, INPUT);


Serial.begin(9600);


}

void loop() {

int distance, duration ;

if(digitalRead(pir_motion))
{
  servo.write(90);
  delay(5000);
  servo.write(0);
  delay(1000);
}


digitalWrite(ultrasonic_trigger, HIGH);
delayMicroseconds(10000);
digitalWrite(ultrasonic_trigger, LOW);

duration = pulseIn(ultrasonic_echo, HIGH) ;
distance = ((duration/2)/29.1) ;

if(distance <= ultrasonic_threshold)
{
  digitalWrite(led_ultrasonic, HIGH) ;
  delay(1000);
  digitalWrite(led_ultrasonic,LOW);
  delay(1000);
  
}


int smoke = analogRead(smoke_sensor) ;

if(smoke >= smoke_threshold)
{
  digitalWrite(led_smoke, HIGH);
  delay(1000);
  digitalWrite(led_smoke, LOW);
  delay(1000);
  
 }
 

}
