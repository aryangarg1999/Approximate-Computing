
int sensor_smoke = A0;
int led = 13 ;
int sensor_thres = 200 ;


void setup() {

  pinMode(sensor_smoke, INPUT) ;
  pinMode(led,OUTPUT) ;
  Serial.begin(9600);
  
}

void loop() {

  
  int temp = analogRead(sensor_smoke);
  Serial.print(temp);
  Serial.print("\n");
  if(temp > sensor_thres)
  {
    
    digitalWrite(led,HIGH);
    delay(1000);
    digitalWrite(led,LOW);
    delay(1000);
    
  }

  else
  {
    
    delay(1000);
    
    }
  
  
}
