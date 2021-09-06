int BoxLength = 500;
int BoxChange = -1;


float BallX = random(100,500); //Randomizes the balls starting position
float BallY = random(100,500);

float BallSpeedX = random(2,5);  //Randomizes the speed of the ball
float BallSpeedY = random(2,5);

void setup(){
  size(500,500);
  frameRate(100);
}

void draw(){
  clear();
  background(50);
  
  
  BoxLength = BoxLength + BoxChange;  //Changes the box' size
  
  if(BoxLength < 50 || BoxLength > 500){    //Makes the box switch between shrinking and growing
    BoxChange = -BoxChange;
  }
  
  BallX = BallX + BallSpeedX;    //Moves the ball
  BallY = BallY + BallSpeedY;
  
  if(BallX > BoxLength || BallX < 0){  //Makes the ball switch direction when it hits the edges
    BallSpeedX = -BallSpeedX;
  }
  if(BallY > BoxLength || BallY < 0){
    BallSpeedY = -BallSpeedY;
  }
  
  if(BallX > BoxLength){   //Makse sure the ball never gets out of the box
    BallX = BoxLength;
  }
  if(BallY > BoxLength){
    BallY = BoxLength;
  }
  fill(160);
  rect(0,0,BoxLength,BoxLength);  //Draws the box
  fill(230);
  ellipse(BallX,BallY,10,10);  //Draws the ball
  
}
