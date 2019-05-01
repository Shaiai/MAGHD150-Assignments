PImage menu;                      //This sets the image variable for the background.
int count;
PImage[] goodGuys = new PImage[4];  //Created an image array to hold the good player cards.
PImage[] badGuys  = new PImage[4];  //Creates an image array to hold evil player cards.

import processing.video.*;          //Imports the video file for K.O;
Movie video;

String fight = "Each Character has a mirrored evil side, can you recognize them?";

import processing.sound.*; //imports the sound library.

SoundFile knockOut;

void setup(){
size(500,281);
  menu = loadImage("menu.jpg");
  video = new Movie(this,"KnockOut.Mov"); // Displays the k.o visual in the middle of the board
  video.loop(); //Infinitely loops the video
  knockOut = new SoundFile(this, "ChooseFighter.mp3"); //PLays the choose your fighter sound effect upon launch.
  knockOut.amp(0.050);
  knockOut.play();


for(int i = 0; i< goodGuys.length; i++){
    goodGuys[i] = loadImage("good"+i+".jpg");
}
for(int j = 0; j<badGuys.length; j++){
  badGuys[j] = loadImage("bad"+j+".jpg");
  badGuys[j].filter(GRAY);
  }
}

 void movieEvent(Movie video){
   video.read();
 
 }

void draw(){
image(menu,0,0);




image(goodGuys[count%4],35,50,100,112);


tint(255,180);
image(badGuys[count%4], 350,50,100,112);


image(video,212,110,70,70);

textSize(12);
text(fight,100,275);

}

void mousePressed(){
  count++;
 }

 
