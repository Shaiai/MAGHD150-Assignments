size(300,300);
background(210);

//For future ellipse shape i need a scale of height and width
//This is based on the height and width of the window created
float xAxis = width * 0.25;
float yAxis = height * 0.25;

float eHeight = min(yAxis, xAxis) * 0.75;
float eWidth = eHeight;
//end of variables for first ellipse

strokeWeight(9); //Declaration of first ellipse
stroke(#ff8c00);
fill( #FDB813);
ellipse(xAxis, yAxis,eWidth+30 , eHeight-50);


float ex2 = dist(width/5, height/5, height /2, width/2);
float ey2 = height * 0.035;
//end of variables for second ellipse
strokeWeight(25); //Declaration of second ellipse
stroke(0);
fill(255,255,255);
ellipse(ex2-20,ey2+25,eWidth-140,eHeight-100);



strokeWeight(25); //Declaration of second ellipse
stroke(#dcf3ff);
fill(255,255,255); 
ellipse(height - 195,width - 135,width -220, height -220);
float  x1 = map(mouseX, 0, width, 100, 300);
ellipse(x1, 75, 50, 50);  
float x2 = map(mouseX, 0, width, 100, 300);
ellipse(x2, 125, 50, 50);  


strokeWeight(12);
stroke(0);
point(95,72);

println("In this attempt to create bubbles using math, i ended up creating a snowman.");
println("His nose was originally a sun and then i got creative.");
println("His top hat couldn't become a tophat because it had to be a bubble.");
println("I hope that you enjoy this mathematical snow creatue. :D");
