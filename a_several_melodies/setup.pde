
void setup() {
  background(0);
  fullScreen();
  //size(1920,1080);
  

  MidiBus.list(); // lists synthesizers
  //Windows version: Microsoft GS Wavetable Synth
  //Mac version: IAC Channel
  myBus = new MidiBus(this, 0, "Microsoft GS Wavetable Synth"); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.
  
  instruments = loadStrings("instruments.txt");
  
  String[] numbers = loadStrings(melodiesFile); //0-я строка в текстовом файле - данные о картинке, а не координаты,
  //поэтому пропускаем 0-ю строку в цикле
  
  //масштабирование изображения и координат под экран
  //информация об изображении
  String str1 = numbers[0].replace(',', ' ').replace(" | ", " ");
  String[] metadata = str1.split(" ");
  //загрузка изображения
  image = loadImage(metadata[2]);
  imageWidth  = Integer.parseInt(metadata[0]);
  imageHeight = Integer.parseInt(metadata[1]);
  scaleFactor = (double)height/(double)imageHeight;
  imageScaledWidth  = (int)(imageWidth  * scaleFactor);
  imageScaledHeight = (int)(imageHeight * scaleFactor);
  println("Scale factor: " + scaleFactor);
  //println("Image scaled height: " + imageScaledHeight);
  if (imageScaledWidth < width){
    shiftX = width - imageScaledWidth; 
  }
    
  melodies = new Melody[numbers.length - 1];
  for (int i = 1; i < numbers.length; i++) {
    melodies[i - 1] = new Melody(numbers[i]);
  }
  
  //calculate default scale array
  calculateScaleArray(gypsyMinorScale);
  
  cp5 = new ControlP5(this); // needs to always be added
  gui();
  
  
  

  

}
