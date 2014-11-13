
Digit[] time = new Digit[6]; // array of 6 Digits, 2 for the hour, 2 for the minutes, and 2 for the seconds

ArrayList numbas = new ArrayList();

float scale, mouseXs, mouseYs; //all these are global variables, because they need to be used in the clock and mouseDragged functions
int globalX, globalY;

boolean autoScale, upScale;

void setup() {
  size(1920, 1080);
  
  //use these to translate and scale
  scale = 1.5;

  //initialize the time Digits
  for (int i = 0; i < time.length; i++) {
    time[i] = new Digit(); //initialize
    time[i].setPos(i*200+50, 200); // xpos of 50, 250, 450, 650, 850, 1050 ... ypox of 200 (aligned)
  }
  
  //make the window resizeable
  if (frame != null) {
    frame.setResizable(true);
  }
}

void draw() {
  
  clock(globalX, globalY, true, scale); //draw clock with xypos, true/false fade, and scale
  
  someOtherDigits();
  
  if (autoScale){
    autoScale();
  }
}
