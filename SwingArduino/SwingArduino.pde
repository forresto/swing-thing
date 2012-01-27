// Swing ID: L and R
char sID = 'L';

// Sensor setup
int delayTime = 1000;
int a0=0;
int a1=0;
int a2=0;
int a3=0;
int a4=0;
int a5=0;
int a6=0;

// Timer testing
unsigned long timerStart;
unsigned long timer;

void setup(){
  Serial.begin(57600);
}

void loop (){
  // Timer testing
  timerStart = micros();
  
  a0=analogRead(0);
  a1=analogRead(1);
  a2=analogRead(2);
  a3=analogRead(3);
  a4=analogRead(4);
  a5=analogRead(5);
  a6=analogRead(6);

  Serial.print(sID);
  Serial.print("AX");
  Serial.println(a0);
  Serial.print(sID);
  Serial.print("AY");
  Serial.println(a1);
  Serial.print(sID);
  Serial.print("AZ");
  Serial.println(a2);
  Serial.print(sID);
  Serial.print("GXA");
  Serial.println(a3);
  Serial.print(sID);
  Serial.print("GXB");
  Serial.println(a4);
  Serial.print(sID);
  Serial.print("GZA");
  Serial.println(a5);
  Serial.print(sID);
  Serial.print("GZB");
  Serial.println(a6);
  
  // Timer testing
  timer = micros()-timerStart;
  Serial.print("Time: ");
  Serial.println(timer);
  
  delay(delayTime);
  
}

