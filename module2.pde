import processing.serial.*;
Serial myPort;  // Create object from Serial class

String val;      
int x; //joystick x-coordinate
int y; //joystick y-coordinate
int z; //joystick button

PImage pokeball;
PImage bulbasaur;
PImage togepi;
PFont font;

void setup() {
  size(700, 700);
  String portName = "dev/cu.wchusbserial54D80050091";
  myPort = new Serial(this, portName, 115200);
  myPort.bufferUntil(10);
  
  pokeball = loadImage("ball.png");
  bulbasaur = loadImage("bulbasaur.png");
  togepi = loadImage("togepi.png");
  font = createFont("LiGothicMed-48", 14);
  textFont(font);
}

void draw() {

  //Set background to green
  background(34,139,34);   
  //Create pokeball object that moves along with the joystick
  image(pokeball, x/6, 500-(y/8), 100, 100);
  
  
  if (z == 0) {   
    float pokemon = int(random(0, 2));

    if(pokemon == 0){
      image(bulbasaur, x/6 - 10, 480 - (y/8), 150, 150);
      text("A wild bulbasaur has appeared!!", 250, 75);
      delay(500);
    } else if (pokemon == 1){
      image(togepi, x/6 - 25, 480 - (y/8), 160, 160);
      text("A wild togepi has appeared!!", 250, 75);
      delay(500);
    }
  
  } 
  
  String vals[] = split(val, ',');
  print(val);
  x = int(vals[0]);
  y = int(vals[1]);
  z = int(vals[2]);
  print(z);
  
}

void serialEvent (Serial myPort){
  
  try {
    val = myPort.readString();
  } 
  
  catch(RuntimeException e) {
    e.printStackTrace();
  }
  
}


