String latinFont  = "latinDraculFont.vlw";
String englishFont = "englishDraculFont.vlw";
String [] latin;
int index = 0;
int count;
String[] english;
String introText = "The famous quote of Dracul vs the Paladin";

PFont latinWrite;
PFont englishWrite;

void setup() {
    size(600,500);
    background(0);
    frameRate(3);
/*   *************** Code to pull from the latin version of the script and display it ****************** */
 String[] latinLines = loadStrings("draculLatin.txt");
 String latinFix = join(latinLines," ");
 
 if(count%2 == 0){
 println(latinLines); 
 }
 

 latin = split(latinFix, " ");
    
    
/* ***************** Code to pull from the english translation and display it ***************** */
 String[] englishLines = loadStrings("draculEnglish.txt");
 String englishFix = join(englishLines, " ");

if(count%2 ==1){
println(englishLines);
}
  english = split(englishFix, " ");
}

void draw(){ 
  
 
  
  
  if(count%2 == 0){
    if(index == latin.length){
    index = 0;
    }
    background(0);
    fill(255);
    textSize(20);
    latinWrite = loadFont(latinFont);
    textFont(latinWrite);
    textAlign(LEFT, TOP);
    text(latin[index],250,50);
    index++;
  }
  else if(count%2 == 1){
    if(index == english.length){
      index = 0;
    }
    background(0);
    fill(255);
    textSize(5);
    englishWrite = loadFont(englishFont);
    textFont(englishWrite);
    textAlign(TOP, RIGHT);
    text(english[index], 250, 200);
    index++; 
  }
  
  
  textAlign(CENTER);
  textSize(30);
  text(introText, 300,450);
  
}


void mousePressed(){
    count ++;


}
