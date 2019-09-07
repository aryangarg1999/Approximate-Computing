int soundsensor = 4;
int led = 2;

void setup()
{
 
  pinMode(soundsensor,INPUT);
  pinMode(led,OUTPUT);
  
}

void loop() 
{
  int temp = digitalRead(soundsensor);

   if(temp==1)
   digitalWrite(led,HIGH);
   else
   digitalWrite(led,LOW);
  
}
