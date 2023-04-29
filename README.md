# Module 2 README

### A wild pokemon has appeared!

![demonstration_AdobeExpress](https://user-images.githubusercontent.com/83284749/235323359-2ce55934-bbd9-469e-a548-467880119154.gif)


<br />

This project uses Arduino (C++) and Processing (Java) Code , along with an ESP32 and joystick to simulate a pokéball moving across the screen. By sending signals from the ESP32, connected to the joystick with wires, to the Processing code, the user is able to control a pokéball within a green screen. Whenever the user presses on the button on the joystick, a pokémon will appear with the message: "A wild ___ has appeared!!"

<br />

To see more of the artistic decisions behind this project, check out my this [medium article](https://elaine-su.squarespace.com/)!

<br />

**This project will require a:** 
- ESP32 TTGO T-Display
- A battery or power source (preferably with a USB-C connector)
- A USB-C cable
- Joystick Component
- Breadboard
- 5 single core wires

To connect the TTGO display to your computer, you will need a USB-C cable that can transfer data, not only for charging purposes

<br />

**For Arduino IDE installation purposes, these are the general steps:**
<br />
To run the software, you will need to download the [Arduino IDE](https://www.arduino.cc/en/software) compatible with your device
1. Once you have Arduino IDE open, and an example patch up on your screen, go to \<File\>, \<Preferences\>, and add this [link](https://dl.espressif.com/dl/package_esp32_index.json) into the “Additional Boards Manager URLs” section as a new line
2. Go to \<Tools\>, \<Board\>, \<ESP32 Arduino\>, and then select the “TTGO T1” option
3. Go to \<Tools\>, \<Manage Libraries\>, and install “tft_eSPI” by “Bodmer”
4. Go to where your libraries are stored on your computer, and look for the “TFT_eSPI” folder, and open up the User_Setup_Select.h file
    - Comment out the line “#include <User_Setup.h>”
    - Uncomment the line “#include <User_Setups/Setup25_TTGO_T_Display.h>”
5. Once saved, depending on your computer’s software, you should be able to upload code to your device
    - You can download the [file](/module2.ino) in this repository for the code to upload to your device
  
<br />

**For Processing installation purposes, these are the general steps:**
<br />
To run the software, you will need to download the [Processing IDE](https://processing.org/download/) compatible with your device
1. Once you have Processing open, be sure to put `import processing.serial.*;` at the top of the file for using serial

---------------------

**Hardware Setup**
1. Put ESP32 pins into breadboard, with USB-C cable opening sticking out
2. Put joystick pins into breadboard above ESP32
3. Insert wires into pins
    - Joystick GND (ground) pin -> ESP32 bottom right G pin
    - Joystick +5V pin -> ESP32 top right 3V pin
    - Joystick VRX pin -> ESP32 25 pin
    - Joystick VRY pin -> ESP32 26 pin
    - Joystick SW pin -> ESP32 27 pin

<br />

**Arduino Setup**
- Know what ESP32 pin every joystick pin corresponds to
- To send data from the ESP32 to the Processing code, there are a few ways, but using `Serial.print` seems to be the easiest way. If you can print some type of symbol between each value, then in the processing code you can parse the values by using `split()` on that symbol/marker. 



