TicTacToe TTT;
int count = 0;

void setup(){
  background(0);
  size(300,300);
 TTT = new TicTacToe();
 
}

void draw(){
TTT.displayBoard();
TTT.displayTheTurn();
TTT.gameName();
}
//This is to count the number of mouse clicks and change the turn based on that.
void mousePressed(){
      if(mousePressed){
        count++;
     }
     //Initiate X's turn based on mouse clicks
     if(count % 2 == 0 && count < 10){
     textSize(20);
     fill(#FFB2B2);
     text("X",mouseX,mouseY);
     
     }
     //Initiate Y's turn based on number of mouse clicks
     if(count % 2 == 1 && count <10){
     textSize(20);
     fill(#999999);
     text("0",mouseX,mouseY);
     }
     //Set a limiter to end the game and inform you that there are no cells remaining.
     if(count >= 9){
     println("The game is over");
     }
     
     
     
}
