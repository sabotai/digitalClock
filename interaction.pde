
void mouseDragged() {

  if (mouseButton == LEFT) {

    boolean dragging = false;
    int dragDistance = 100;

    for ( int i = 0; i < time.length; i++) {
      //if (dist(mouseX, mouseY, time[i].startX, time[i].startY) < dragDistance) {
      int x = time[i].startX + time[i].sep;
      int y = time[i].startY + time[i].sep; 

      //if (dist(mouseX, mouseY, time[i].startX + time[i].sep, time[i].startY + 2 * time[i].sep) < dragDistance) {
      if (dist(mouseXs, mouseYs, x, y) < dragDistance) {
        if ( !dragging ) {
          fill(255);
          ellipse(x, y, time[i].sep, time[i].sep);
          time[i].startX = int( lerp(time[i].startX, mouseXs, 0.2) );
          time[i].startY = int( lerp(time[i].startY, mouseYs, 0.2) );
          dragging = true; // set it to true so no other Digits will be affected
        }
      }
    }
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    scale -= 0.1;
  } 
  if (keyCode == RIGHT) {
    scale += 0.1;
  }
  if (keyCode == SHIFT) {
    autoScale = true;
    upScale = true;
  }
  
  switch (key) {
  case 'a':
    globalX-= 3;
    break;
  case 'd':
    globalX+= 3;
    break;
  case 'w':
    globalY-= 3;
    break;
  case 's':
    globalY+= 3;
    break;
  }
 
  //println(scale + " scale  " + globalX + " globalX  " + globalY + " globalY");
}
