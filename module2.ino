void setup() {
  Serial.begin(115200);
  pinMode(25, INPUT_PULLUP);
}

void loop() {
  int xVal = analogRead(25);
  int yVal = analogRead(26);
  int zVal = analogRead(27);

  Serial.print(xVal,DEC);
  Serial.print(",");
  Serial.print(yVal,DEC);
  Serial.print(",");
  Serial.print(zVal,DEC);
  Serial.print(",");
  Serial.print("\n");
  delay(100);
}
