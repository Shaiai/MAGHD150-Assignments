float pprx, ppry;
float pprTH;
float pprCos; 
float pprSin;
float pprSpeed;
float pprW;
float pprH;
float count;
void setup(){
size(300,300);
background(32);
fill(32, 32, 32, 24);
  rect(0, 0, width, height);
pprSpeed = 0.1;
//pepperoni variables
pprx = width * 0.25;
  ppry = height * 0.5;

}

void draw(){
  
 //The Pizza and it's transparent background.
strokeWeight(8);
stroke(#dba24a);
fill(225,216,0,20);
ellipse(150,130,150,150);
pprW = min(width, height) * 0.25;
pprH = min(width, height) * 0.25;
pprTH = pprTH + map(mouseX, 0, width, -pprSpeed, pprSpeed);
pprCos = cos(pprTH);
pprSin = sin(pprTH);
//Strafing pepperoni
pprx = map(pprCos, -1, 1, pprW, width -pprW);
ppry = height * 0.5;
fill(255,0,0);
ellipse(pprx, ppry, pprW * 0.5, pprH * 0.5);

for(int i = 0; i < 300; i+=15){
  for(int j = 0; j < 100; j+=15){
  strokeWeight(1);
  stroke(255,0,0,20);
  point(i,j);
  } 
}
if(keyPressed){
count ++;

if(count < 5){
 fill(0,0,255,10);
 rect(0,250,width,20); 
 count++;
}
else if(count < 10){
  fill(0,255,0,10);
  rect(0,250,width,20);  
 }
else
fill(255,0,0,10);
 rect(0,250,width,20);  
}

strokeWeight(2);
stroke(0);
line(150,130,92,90);
line(150,130,150,60);
line(150,130,210,95);
line(150,130,212,160);
line(150,130,160,200);
line(150,130,83,150);
line(150,130,112,190);
}
void mousePressed() {
 noStroke();
 fill(212,78,42);
 ellipse(mouseX, mouseY, 15, 15);
}
