
void someOtherDigits(){
  if (mousePressed && (mouseButton == RIGHT)) {
    Digit tempDigit = new Digit();
    tempDigit.setPos(int(mouseXs), int(mouseYs));
    tempDigit.assign(int(random(0,9)));
    
    numbas.add(tempDigit);
    println(numbas.size());
  }
  
  for (int i = 0; i < numbas.size(); i++){
   Digit thisDigit = (Digit) numbas.get(i);
   thisDigit.display();
  }
  
}
