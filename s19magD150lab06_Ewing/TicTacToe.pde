class TicTacToe{
  //Variables and booleans that will associate with turn switching and color switching
  color currentColor = color(255);
  color xColor = color(#FFB2B2);
  color yColor = color(#999999);
  String theTurn;
  
  
  //Default constructor with no return type.
    TicTacToe(){
    
    }
    
   
    
//Thisis the function that will display the 9 cells of the board.
    void displayBoard(){
      
       if(count % 2 == 1){
    currentColor = xColor;
    }
    if(count % 2 ==0){
    currentColor = yColor;
    }
      
      
      strokeWeight(5);
      stroke(currentColor);
      noFill();
      rect(80,50,50,50);
      rect(130,50,50,50);
      rect(180,50,50,50);
      rect(80,100,50,50);
      rect(130,100,50,50);
      rect(180,100,50,50);
      rect(80,150,50,50);
      rect(130,150,50,50);
      rect(180,150,50,50);
}
    
    //This will be the text that introduces the game  and small advice.
    void gameName(){
    
    String TTText = "This is the game of TicTacToe";
    textSize(15);
    
    fill(currentColor);
      text(TTText,50,25);
      
    String TTExtUnder = "Make your move but, do it Wisely";
    textSize(15);
    fill(currentColor);
    text(TTExtUnder,40,250);
  }
  
  //This will display whose turn it currently is on the left side to the right side ofthe booard
  
  void displayTheTurn(){
      if(count % 2 == 0){
         theTurn = "Y";
        
      }
      else if(count % 2 == 1){
      
      theTurn = "X";
      }
    
    
    
       textSize(20);
       fill(currentColor);
       text("It Is",20,100);
       
       textSize(20);
       fill(currentColor);
       text("Your",20,130);
       
       textSize(20);
       fill(currentColor);
       text("Move:",18,160);
       
       textSize(40);
       fill(currentColor);
       text(theTurn,260,150);
  
  
  }
  
  
  
  
}


    
    
    
                                    
    
    
    
