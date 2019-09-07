
int ultrasonic_trigger = 2 ;     // This will be the output for the ARDUINO board ....
int ultrasonic_echo = 7 ;         // This will be the input for the ARDUINO BOARD
int led = 13 ;

void setup() {

pinMode(ultrasonic_echo,INPUT);
pinMode(ultrasonic_trigger,OUTPUT) ;
pinMode(led,OUTPUT);
Serial.begin(9600);
  
  

}

void loop() {

  long distance, duration ;

  digitalWrite(ultrasonic_trigger,HIGH);
  delayMicroseconds(1000);
  digitalWrite(ultrasonic_trigger,LOW);

  duration = pulseIn(ultrasonic_echo, HIGH) ;
  Serial.print(duration);
  Serial.print("\n");
  distance = ((duration/2)/29.1) ;                     // As we are calculating the distance ... and "ultrasonic_echo" will measure the time lap of rays from TRANSMITTER TO RECEIVER ... so it measured the distance TWICE ..

   Serial.print(distance);
   Serial.print("\n"); 
// And the speed of the sound is 29.1

  if(distance <= 50)    // This means that when the distance of the obstacle is less than 5"cm" .....
  {
    digitalWrite(led,HIGH);
    delay(1000);
    digitalWrite(led,LOW);
    delay(1000);

    
  }

  else
  {
    digitalWrite(led,LOW);
    delay(1000);
  }

}
