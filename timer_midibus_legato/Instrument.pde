void setInstrument(int inst) {
  myBus.sendMessage(0xc0,channel,inst,0);
}
