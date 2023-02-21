void gui() {
  
  cp5 = new ControlP5(this); // always add

  
  // Duration, slider
  Group g1 = cp5.addGroup("Change duration")
                .setBackgroundColor(color(0, 64))
                .setBackgroundHeight(40)
 
                ;
  
  cp5.addSlider("duration")
     .setPosition(10,20)
     .setSize(140,20)
     .setRange(1,100)
     .setValue(50)
     .moveTo(g1)
     ;
     
  // Change instrument
  Group g2 = cp5.addGroup("Change Instrument")
                .setBackgroundColor(color(0, 64))
                .setBackgroundHeight(420)
                ;
     
  cp5.addRadioButton("radio1")
     .setPosition(10,10)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[0], 0)
     .addItem(instruments[1], 1)
     .addItem(instruments[2], 2)
     .addItem(instruments[3], 3)
     .addItem(instruments[4], 4)
     .addItem(instruments[5], 5)
     .addItem(instruments[6], 6)
     .addItem(instruments[7], 7)
     .activate(0)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;
 cp5.addRadioButton("radio2")
     .setPosition(10,110)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[8], 8)
     .addItem(instruments[9], 9)
     .addItem(instruments[10], 10)
     .addItem(instruments[11], 11)
     .addItem(instruments[12], 12)
     .addItem(instruments[13], 13)
     .addItem(instruments[14], 14)
     .addItem(instruments[15], 15)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;
          
  cp5.addRadioButton("radio3")
     .setPosition(10,210)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[16], 16)
     .addItem(instruments[17], 17)
     .addItem(instruments[18], 18)
     .addItem(instruments[19], 19)
     .addItem(instruments[20], 20)
     .addItem(instruments[21], 21)
     .addItem(instruments[22], 22)
     .addItem(instruments[23], 23)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;
     
  cp5.addRadioButton("radio4")
     .setPosition(10,310)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[24], 24)
     .addItem(instruments[25], 25)
     .addItem(instruments[26], 26)
     .addItem(instruments[27], 27)
     .addItem(instruments[28], 28)
     .addItem(instruments[29], 29)
     .addItem(instruments[30], 30)
     .addItem(instruments[31], 31)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;
  cp5.addRadioButton("radio5")
     .setPosition(120,10)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[32], 32)
     .addItem(instruments[33], 33)
     .addItem(instruments[34], 34)
     .addItem(instruments[35], 35)
     .addItem(instruments[36], 36)
     .addItem(instruments[37], 37)
     .addItem(instruments[38], 38)
     .addItem(instruments[39], 39)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;    
  cp5.addRadioButton("radio6")
     .setPosition(120,110)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[40], 40)
     .addItem(instruments[41], 41)
     .addItem(instruments[42], 42)
     .addItem(instruments[43], 43)
     .addItem(instruments[44], 44)
     .addItem(instruments[45], 45)
     .addItem(instruments[46], 46)
     .addItem(instruments[47], 47)
     .setColorLabel(color(255))
     .moveTo(g2)
     ; 
  cp5.addRadioButton("radio7")
     .setPosition(120,210)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[48], 48)
     .addItem(instruments[49], 49)
     .addItem(instruments[50], 50)
     .addItem(instruments[51], 51)
     .addItem(instruments[52], 52)
     .addItem(instruments[53], 53)
     .addItem(instruments[54], 54)
     .addItem(instruments[55], 55)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;
 cp5.addRadioButton("radio8")
     .setPosition(120,310)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[56], 56)
     .addItem(instruments[57], 57)
     .addItem(instruments[58], 58)
     .addItem(instruments[59], 59)
     .addItem(instruments[60], 60)
     .addItem(instruments[61], 61)
     .addItem(instruments[62], 62)
     .addItem(instruments[63], 63)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;
          
  cp5.addRadioButton("radio9")
     .setPosition(240,10)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[64], 64)
     .addItem(instruments[65], 65)
     .addItem(instruments[66], 66)
     .addItem(instruments[67], 67)
     .addItem(instruments[68], 68)
     .addItem(instruments[69], 69)
     .addItem(instruments[70], 70)
     .addItem(instruments[71], 71)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;
     
  cp5.addRadioButton("radio10")
     .setPosition(240,110)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[72], 72)
     .addItem(instruments[73], 73)
     .addItem(instruments[74], 74)
     .addItem(instruments[75], 75)
     .addItem(instruments[76], 76)
     .addItem(instruments[77], 77)
     .addItem(instruments[78], 78)
     .addItem(instruments[79], 79)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;
  cp5.addRadioButton("radio11")
     .setPosition(240,210)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[80], 80)
     .addItem(instruments[81], 81)
     .addItem(instruments[82], 82)
     .addItem(instruments[83], 83)
     .addItem(instruments[84], 84)
     .addItem(instruments[85], 85)
     .addItem(instruments[86], 86)
     .addItem(instruments[87], 87)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;    
  cp5.addRadioButton("radio12")
     .setPosition(240,310)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[88], 88)
     .addItem(instruments[89], 89)
     .addItem(instruments[90], 90)
     .addItem(instruments[91], 91)
     .addItem(instruments[92], 92)
     .addItem(instruments[93], 93)
     .addItem(instruments[94], 94)
     .addItem(instruments[95], 95)
     .setColorLabel(color(255))
     .moveTo(g2)
     ; 
  cp5.addRadioButton("radio13")
     .setPosition(360,10)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[96], 96)
     .addItem(instruments[97], 97)
     .addItem(instruments[98], 98)
     .addItem(instruments[99], 99)
     .addItem(instruments[100], 100)
     .addItem(instruments[101], 101)
     .addItem(instruments[102], 102)
     .addItem(instruments[103], 103)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;
     
  cp5.addRadioButton("radio14")
     .setPosition(360,110)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[104], 104)
     .addItem(instruments[105], 105)
     .addItem(instruments[106], 106)
     .addItem(instruments[107], 107)
     .addItem(instruments[108], 108)
     .addItem(instruments[109], 109)
     .addItem(instruments[110], 110)
     .addItem(instruments[111], 111)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;
  cp5.addRadioButton("radio15")
     .setPosition(360,210)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[112], 112)
     .addItem(instruments[113], 113)
     .addItem(instruments[114], 114)
     .addItem(instruments[115], 115)
     .addItem(instruments[116], 116)
     .addItem(instruments[117], 117)
     .addItem(instruments[118], 118)
     .addItem(instruments[119], 119)
     .setColorLabel(color(255))
     .moveTo(g2)
     ;    
  cp5.addRadioButton("radio16")
     .setPosition(360,310)
     .setItemWidth(10)
     .setItemHeight(10)
     .addItem(instruments[120], 120)
     .addItem(instruments[121], 121)
     .addItem(instruments[122], 122)
     .addItem(instruments[123], 123)
     .addItem(instruments[124], 124)
     .addItem(instruments[125], 125)
     .addItem(instruments[126], 126)
     .addItem(instruments[127], 127)
     .setColorLabel(color(255))
     .moveTo(g2)
     ; 
  

  // group number 3, contains a bang and a slider
  Group g3 = cp5.addGroup("Choose Scale")
                .setBackgroundColor(color(0, 64))
                .setBackgroundHeight(110)
                ;
                
  
  cp5.addRadioButton("chromatic")
    .setPosition(10,10)
    .setItemWidth(20)
    .setItemHeight(20)
    .setItemsPerRow(3)
    .setSpacingRow(10)
    .setSpacingColumn(100)
    .addItem("Gypsy Minor", 0)
    .addItem("Gypsy Major", 1)
    .addItem("Major Pentatonic", 2)
    .addItem("Minor Pentatonic", 3)
    .addItem("Japanese Scale", 4)
    .activate(0)
    .moveTo(g3)
    ;


  // Select melodies
  Group g4 = cp5.addGroup("Select Melody")
                .setBackgroundColor(color(0, 64))
                .setBackgroundHeight(80)
                ;
  RadioButton melodiesRadioButton = cp5.addRadioButton("melodiesRadioButton")
    .setPosition(10,10)
    .setItemWidth(20)
    .setItemHeight(20)
    .setItemsPerRow(8)
    .setSpacingColumn(25)
    ;
   for (int i = 0; i < melodies.length; i++){ 
   //С помощью цикла добавляем переключатели. Количество
   //переключателей зависит от количества мелодий.
     melodiesRadioButton.addItem(""+i, i);
   }
   melodiesRadioButton
     .activate(0)
     .moveTo(g4)
     ;
  
  Group g5 = cp5.addGroup("Select color")
  .setBackgroundColor(color(0,64))
  .setBackgroundHeight(100)
  ;
  
  cp5.addRadioButton("colorSelection")
  .setPosition(10,10)
  .setItemWidth(10)
  .setItemHeight(10)
  .setItemsPerRow(8)
  .setSpacingColumn(40)
  .addItem("Red", 0)
  .addItem("Yellow", 1)
  .addItem("Green", 2)
  .addItem("Aqua", 3)
  .addItem("Blue", 4)
  .addItem("Cyan", 5)
  .addItem("Violet", 6)
  .addItem("Pink", 7)
  .activate(0)
  .moveTo(g5)
  ;
  
  Group g6 = cp5.addGroup("Active melody")
  .setBackgroundColor(color(0,64))
  .setBackgroundHeight(100)
  ;
  
  cp5.addToggle("active")
    .setPosition(10,10)
    .setSize(25,25)
    .setValue(true)
    .moveTo(g6)
    ;
 
  // create a new accordion
  // add g1, g2, and g3, g4, g5, g6 to the accordion.
  accordion = cp5.addAccordion("acc")
                 .setPosition(40,40)
                 .setWidth(500)
                 .addItem(g1)
                 .addItem(g2)
                 .addItem(g3)
                 .addItem(g4)
                 .addItem(g5)
                 .addItem(g6)
                 ;
                 
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.open(0,1,2);}}, 'o');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.close(0,1,2);}}, 'c');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.setWidth(300);}}, '1');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.setPosition(0,0);accordion.setItemHeight(190);}}, '2'); 
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.setCollapseMode(ControlP5.ALL);}}, '3');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.setCollapseMode(ControlP5.SINGLE);}}, '4');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {cp5.remove("myGroup1");}}, '0');
  
  accordion.open(0,1,2,3,4,5);
  
  // use Accordion.MULTI to allow multiple group 
  // to be open at a time.
  accordion.setCollapseMode(Accordion.MULTI);
  
  // when in SINGLE mode, only 1 accordion  
  // group can be open at a time.  
  // accordion.setCollapseMode(Accordion.SINGLE);

}
