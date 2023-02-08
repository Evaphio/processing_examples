void gui() {
  
  cp5 = new ControlP5(this); // always add

  
  // Duration, slider
  Group g1 = cp5.addGroup("Change duration")
                .setBackgroundColor(color(0, 64))
                .setBackgroundHeight(40)
 
                ;
  
  cp5.addSlider("Duration")
     .setPosition(10,20)
     .setSize(140,20)
     .setRange(100,500)
     .setValue(100)
     .moveTo(g1)
     ;
     
  // Change instrument
  Group g2 = cp5.addGroup("Change Instrument")
                .setBackgroundColor(color(0, 64))
                .setBackgroundHeight(300)
                ;
     
  cp5.addRadioButton("radio")
     .setPosition(10,20)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[0], 0)
     .addItem(instruments[1], 1)
     .addItem(instruments[2], 2)
     .addItem(instruments[3], 3)
     .addItem(instruments[4], 4)
     .addItem(instruments[5], 0)
     .addItem(instruments[6], 1)
     .addItem(instruments[7], 2)
     .addItem(instruments[8], 3)
     .addItem(instruments[9], 4)
     .setColorLabel(color(255))
     .activate(2)
     .moveTo(g2)
     ;

  // group number 3, contains a bang and a slider
  Group g3 = cp5.addGroup("Choose Scale")
                .setBackgroundColor(color(0, 64))
                .setBackgroundHeight(150)
                ;
  
  cp5.addBang("shuffle")
     .setPosition(10,20)
     .setSize(40,50)
     .moveTo(g3)
     ;
     
  cp5.addSlider("hello")
     .setPosition(60,20)
     .setSize(100,20)
     .setRange(100,500)
     .setValue(100)
     .moveTo(g3)
     ;
     
  cp5.addSlider("world")
     .setPosition(60,50)
     .setSize(100,20)
     .setRange(100,500)
     .setValue(200)
     .moveTo(g3)
     ;

  // create a new accordion
  // add g1, g2, and g3 to the accordion.
  accordion = cp5.addAccordion("acc")
                 .setPosition(40,40)
                 .setWidth(600)
                 .addItem(g1)
                 .addItem(g2)
                 .addItem(g3)
                 ;
                 
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.open(0,1,2);}}, 'o');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.close(0,1,2);}}, 'c');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.setWidth(300);}}, '1');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.setPosition(0,0);accordion.setItemHeight(190);}}, '2'); 
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.setCollapseMode(ControlP5.ALL);}}, '3');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.setCollapseMode(ControlP5.SINGLE);}}, '4');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {cp5.remove("myGroup1");}}, '0');
  
  accordion.open(0,1,2);
  
  // use Accordion.MULTI to allow multiple group 
  // to be open at a time.
  accordion.setCollapseMode(Accordion.MULTI);
  
  // when in SINGLE mode, only 1 accordion  
  // group can be open at a time.  
  // accordion.setCollapseMode(Accordion.SINGLE);

}
