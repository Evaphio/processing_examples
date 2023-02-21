void calculateScaleArray(int[] scale){
  //эта функция расчитывает таблицу интервалов scaleArray по заданной интервальной системе scale
  //также она сообщает количество ступеней scaleArraySize в таблице интервалов scaleArray - от 0 до 127.
  //также она сообщает количество пикселей в одной ступени stepInPixels 
  int previousTone = 0;
  int scalePointer = 0; //указатель на текущий элемент в интервальной системе scale
  for(int i = 0; i < scaleArray.length; i++){
    if (i != 0) {
      previousTone = scaleArray[i-1]; //записываем предыдущую ноту
    }
    scaleArray[i] = previousTone + scale[scalePointer]; //текущая нота равна предыдущей + интервал
    scaleArraySize = i;
    if (scaleArray[i] > 127){
      break; //если значения нот начинают выходить за 127, останавливаем цикл
    }
    scalePointer++; //устанавливаем указатель в интервальной системе на следующий интервал
    //если дошли до конца, то возвращаемся на начало
    if (scalePointer == scale.length){
     scalePointer = 0; 
    }
    println(i + " :" + scaleArray[i]);
  }
  stepInPixels = 1080 / scaleArraySize;
  println("ScaleArraySize: " + scaleArraySize);
}
