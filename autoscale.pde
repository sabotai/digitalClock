void autoScale() {
  if (upScale) {
    scale += 0.05; 
    globalX += 1;
    globalY -= 3;
  } else {
    scale -= 0.05;
    globalX -= 5;
  }


  if (scale >= 4 || scale <= 0) {
    upScale = !upScale;
  }
}
