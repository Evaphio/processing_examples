public void ChangeInstrument() {


  instrument = instrument + 1;
  if (instrument == 128) {
    instrument = 0;
  }
}

void setInstrument(int inst) {
  myBus.sendMessage(0xc0,channel,inst,0);
}
