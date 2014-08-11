
class Digit {

  boolean[] toggle = new boolean[8];
  int startX; //x pos of digit
  int startY; //y pos of digit
  int distance; // must be of these proportions
  int vDist;
  int sep;
  int borderSize;

  color numbColor;


  Digit() { // default initialization

    borderSize = 2;
    sep = 20; // originals were 150, 100, 25
    distance = 120;
    vDist = 80;
    numbColor = color(0, 221, 255); //cyan
  }

  void setPos(int iStartX, int iStartY) { //set the coordinates
    startX = iStartX;
    startY = iStartY;
  }

  void setScale(float digitScale) {
    borderSize *= digitScale;
    sep *= digitScale;
    distance *= digitScale;
    vDist *= digitScale;
  }


  void assign(int number) {

    for (int i = 0; i < toggle.length; i++) { //initialize all 7 segments as off
      toggle[i] = false;
    }

    switch (number) {
    case 0:
      toggle[1] = true;
      toggle[2] = true;
      toggle[3] = true;
      toggle[4] = true;
      toggle[5] = true;
      toggle[7] = true;
      break;

    case 1:
      toggle[3] = true;
      toggle[4] = true;
      break;

    case 2:
      toggle[2] = true;
      toggle[3] = true;
      toggle[5] = true;
      toggle[6] = true;
      toggle[7] = true;
      break;

    case 3:
      toggle[3] = true;
      toggle[4] = true;
      toggle[5] = true;
      toggle[6] = true;
      toggle[7] = true;
      break;

    case 4:
      toggle[1] = true;
      toggle[3] = true;
      toggle[4] = true;
      toggle[6] = true;
      break;

    case 5:
      toggle[1] = true;
      toggle[4] = true;
      toggle[5] = true;
      toggle[6] = true;
      toggle[7] = true;
      break;

    case 6:
      toggle[1] = true;
      toggle[2] = true;
      toggle[4] = true;
      toggle[5] = true;
      toggle[6] = true;
      toggle[7] = true;
      break;

    case 7:
      toggle[3] = true;
      toggle[4] = true;
      toggle[5] = true;
      break;

    case 8:
      toggle[1] = true;
      toggle[2] = true;
      toggle[3] = true;
      toggle[4] = true;
      toggle[5] = true;
      toggle[6] = true;
      toggle[7] = true;
      break;

    case 9:
      toggle[1] = true;
      toggle[3] = true;
      toggle[4] = true;
      toggle[5] = true;
      toggle[6] = true;
      break;
    }
  }

  void display() {

    fill(numbColor);
    strokeWeight(borderSize);

    if (toggle[1]) {
      //int startY = startX;

      beginShape(); //top left
      vertex(startX, startY);
      vertex(startX+sep, startY-sep);
      vertex(startX+sep*2, startY);
      vertex(startX+sep*2, startY+vDist);
      vertex(startX+sep, startY+vDist+sep);
      vertex(startX, startY+vDist);
      endShape(CLOSE);
    }
    if (toggle[2]) {
      beginShape(); //bottom left
      vertex(startX, startY+distance);
      vertex(startX+sep, startY-sep+distance);
      vertex(startX+sep*2, startY+distance);
      vertex(startX+sep*2, startY+vDist+distance);
      vertex(startX+sep, startY+vDist+sep+distance);
      vertex(startX, startY+vDist+distance);
      endShape(CLOSE);
    }
    if (toggle[3]) {
      beginShape(); //top right
      vertex(startX+distance, startY);
      vertex(startX+sep+distance, startY-sep);
      vertex(startX+2*sep+distance, startY);
      vertex(startX+2*sep+distance, startY+vDist);
      vertex(startX+sep+distance, startY+vDist+sep);
      vertex(startX+distance, startY+vDist);
      endShape(CLOSE);
    }
    if (toggle[4]) {
      beginShape(); //bottom right
      vertex(startX+distance, startY+distance);
      vertex(startX+sep+distance, startY-sep+distance);
      vertex(startX+2*sep+distance, startY+distance);
      vertex(startX+2*sep+distance, startY+vDist+distance);
      vertex(startX+sep+distance, startY+vDist+sep+distance);
      vertex(startX+distance, startY+vDist+distance);
      endShape(CLOSE);
    }
    if (toggle[5]) {
      beginShape(); //horizontal top
      vertex(startX+sep, startY-sep);
      vertex(startX+2*sep, startY);
      vertex(startX+distance, startY);
      vertex(startX+sep+distance, startY-sep);
      vertex(startX+distance, startY-2*sep);
      vertex(startX+2*sep, startY-2*sep);
      endShape(CLOSE);
    }
    if (toggle[6]) {
      beginShape(); //horizontal middle
      vertex(startX+sep, startY-sep+distance);
      vertex(startX+2*sep, startY+distance);
      vertex(startX+distance, startY+distance);
      vertex(startX+sep+distance, startY-sep+distance);
      vertex(startX+distance, startY-2*sep+distance);
      vertex(startX+2*sep, startY-2*sep+distance);
      endShape(CLOSE);
    }
    if (toggle[7]) {
      beginShape(); //horizontal bottom
      vertex(startX+sep, startY-sep+distance*2);
      vertex(startX+2*sep, startY+distance*2);
      vertex(startX+distance, startY+distance*2);
      vertex(startX+sep+distance, startY-sep+distance*2);
      vertex(startX+distance, startY-2*sep+distance*2);
      vertex(startX+2*sep, startY-2*sep+distance*2);
      endShape(CLOSE);
    }
  }
}

