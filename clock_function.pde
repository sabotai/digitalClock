
void clock(int transX, int transY, boolean fade, float clockScale) {
  
  if (fade) {
    fill(0, 20); //create the fading effect of the numbers
    rect(0, 0, width, height);
  } else {
   background(0); 
  }

  translate(transX, transY); 
  
  scale(clockScale);
  //dividing the mouse position by scale keeps the mouse interactions intact after scaling things
  mouseXs = ( mouseX - transX)/ clockScale;// - transX; 
  mouseYs = ( mouseY - transY)/ clockScale;// -  transY;
   
  
  String s, s2, m, m2, h, h2;
  String timeS, timeM, timeH, h3; 

  //convert to string, so we can split the 2 number constituents
  timeS = String.valueOf(second());
  timeM = String.valueOf(minute());
  timeH = String.valueOf(hour());


  s = timeS.substring(0, 1);
  if (timeS.length() == 2) {
    s2 = timeS.substring(1, 2);
  } else {
    s2 = s;
    s = "0";
  }
  m = timeM.substring(0, 1);
  if (timeM.length() == 2) {
    m2 = timeM.substring(1, 2);
  } else {
    m2 = m;
    m = "0";
  }
  h = timeH.substring(0, 1);
  if (timeH.length() == 2) {
    h2 = timeH.substring(1, 2);
  } else {
    h2 = h;
    h = "0";
  }

  // assign each clock digit to a position in the array of Digits
  time[0].assign(int(h));
  time[1].assign(int(h2));
  time[2].assign(int(m));
  time[3].assign(int(m2));
  time[4].assign(int(s));
  time[5].assign(int(s2));

  for (int i = 0; i < time.length; i++) {
    time[i].display(); // display each one
  }
}
