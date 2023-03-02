void calculateScaleArray(int[] scale){
  //calucluates the tavle of intervals scaleArray according to the scale
  //it also sets the number of steps in  scaleArraySize in the table of intervals scaleArray - from 0 to 127.
  //it also calculates the number of pixels in one step  stepInPixels 
  int previousTone = 0;
  int scalePointer = 0; //the indicater of the current element in the scale
  for(int i = 0; i < scaleArray.length; i++){
    if (i != 0) {
      previousTone = scaleArray[i-1]; //registering the previous note
    }
    scaleArray[i] = previousTone + scale[scalePointer]; //the current note = the previous note plus interval 
    scaleArraySize = i;
    if (scaleArray[i] > 127){
      break; //if the pitch number is higher than 127, stop the cycle
    }
    scalePointer++; //the indicater of the next interval in the scale
    //если дошли до конца, то возвращаемся на начало
    if (scalePointer == scale.length){
     scalePointer = 0; 
    }
    //println(i + " :" + scaleArray[i]);
  }
  stepInPixels = height / scaleArraySize;
  println("ScaleArraySize: " + scaleArraySize);
}
