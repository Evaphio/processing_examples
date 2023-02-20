void deactivateOthers(int current) {
  for (int i=1; i<=16; i++){
    if (i == current) { continue; }
    RadioButton r = (RadioButton) cp5.getGroup("radio" + i);
    r.deactivateAll();
  }
}

void radio1(int theC) {
  deactivateOthers(1);
  melodies[selectedMelody].instrument = theC;
}

void radio2(int theC) {
  deactivateOthers(2);
  melodies[selectedMelody].instrument = theC;
} 

void radio3(int theC) {
  deactivateOthers(3);
  melodies[selectedMelody].instrument = theC;
} 

void radio4(int theC) {
  deactivateOthers(4);
  melodies[selectedMelody].instrument = theC;
} 
void radio5(int theC) {
  deactivateOthers(5);
  melodies[selectedMelody].instrument = theC;
} 
void radio6(int theC) {
  deactivateOthers(6);
  melodies[selectedMelody].instrument = theC;
} 
void radio7(int theC) {
  deactivateOthers(7);
  melodies[selectedMelody].instrument = theC;
}

void radio8(int theC) {
  deactivateOthers(8);
  melodies[selectedMelody].instrument = theC;
} 

void radio9(int theC) {
  deactivateOthers(9);
  melodies[selectedMelody].instrument = theC;
} 

void radio10(int theC) {
  deactivateOthers(10);
  melodies[selectedMelody].instrument = theC;
} 
void radio11(int theC) {
  deactivateOthers(11);
  melodies[selectedMelody].instrument = theC;
} 
void radio12(int theC) {
  deactivateOthers(12);
  melodies[selectedMelody].instrument = theC;
} 

void radio13(int theC) {
  deactivateOthers(13);
  melodies[selectedMelody].instrument = theC;
} 

void radio14(int theC) {
  deactivateOthers(14);
  melodies[selectedMelody].instrument = theC;
} 
void radio15(int theC) {
  deactivateOthers(15);
  melodies[selectedMelody].instrument = theC;
} 
void radio16(int theC) {
  deactivateOthers(16);
  melodies[selectedMelody].instrument = theC;
}

void melodiesRadioButton(int melodyIndex){
  selectedMelody = melodyIndex;
  int radioButtonsInGroup = 8;
  int radioGroupIndex = (melodies[selectedMelody].instrument / radioButtonsInGroup) + 1; //номер группы RadioButton, которой принадлежит текущий инструмент (номер от 0 до 15)
  RadioButton r = (RadioButton) cp5.getGroup("radio" + radioGroupIndex);
  deactivateOthers(radioGroupIndex);
  int indexInRadioGroup = melodies[selectedMelody].instrument % radioButtonsInGroup; //деление по модулю, чтобы найти индекс инструмента в нужной группе (индекс от 0 до 7)
  r.activate(indexInRadioGroup);
  instrument = melodies[selectedMelody].instrument;
}
