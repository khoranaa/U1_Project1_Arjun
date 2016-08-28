/* U1_Project1_Arjun
Table Tennis Game by Arjun Khorana

This is my Creative Coding Project. It is a 2-D multiplayer table tennis game.
One player uses the arrow keys to move the red racket, while the other player uses WASD to move the blue racket.
To get a point, the player has to send the ball in a direction in which the other player cannot reach it with his/her racket.
The first person who gets to 11 points first wins. You can play as many games as possible before exiting the code. Enjoy this game!

all the floats and ints are variables for this game
floats are vairable which in this game, they are meant for positions and speed
ints are short for integers, which are meant for measurements, direction, and scores in this game*/

float x1 = 1275;//x position of red racket
float y1 = 410; //y position of red racket
float x2 = 80;  //x position of blue reacket
float y2 = 410; //y poistion of blue racket
float x3 = 150; //x position of ball
float y3 = 460; //y position of ball
int xDirectionBat1 = 1; //left to right direction of the red racket
int yDirectionBat1 = -1;//up and down direction of the red racket
int xDirectionBat2 = 1;//left to right direction of the red racket
int yDirectionBat2 = -1;//up and down direction of the red racket
int xDirectionBall = 1;//left to right direction of the ball
int yDirectionBall = -1;//up and down direction of the ball
float xballSpeed = 6; //speed of the ball going left to right
float yballSpeed = 6; //speed of the ball going up and down
float xbatSpeed = 50; //speed of the rackets going left to right
float ybatSpeed = 50; //speed of the rackets going up and down
int rad = 20; //radius of ball
int score1 = 0; //starting score number of the red racket
int score2 = 0; //starting score number of the blue racket

void setup() //sets up the things you want the code to do
{
  fullScreen(); //size of the screen
  ellipseMode(RADIUS); //measurement of the circle based on the radius
  x3 = width/2; //ball starts from the middle of the screen in the x position
  y3 = height/2;//ball starts from the middle of the screen in the y position
}
void draw() //draws the things you want the code to do
{
  
  background(0); //black background (the code for black is 0)
  
  stroke(255); //outline of white on the table
  fill(0,255,0); //making the table color green
  rect(width*0.14,height*0.05,width * 0.7, height * 0.9); //shape of the table (rectangle)
  
  stroke(0); //outline of black
  strokeWeight(15); //measures how thick the line is
  line(width*0.49,height * 0.04,width*0.49,height*0.95); //draws the line 

  stroke(255); //outline of white
  strokeWeight(7); //measures how thick the line is
  line(width*0.14,height*0.5122,width*0.484,height*0.5122); //draws the line 
 
  stroke(255); 
  strokeWeight(7);
  line(width*0.496,height*0.5122,width*0.84,height*0.5122);
  
  textSize(96); //size of the text words for the score
  fill(0,0,255); //color of the word
  text(score2, width*0.25, height*0.77); //tells you what you want the text to be and where you want to put the text

  textSize(96);
  fill(255, 0, 0);
  text(score1, width*0.7, height*0.77); 
     
    
    if (collision()) //this is the code for when the ball hits the racket
    {
      xDirectionBall *= -1; //this shows that the direction of the ball will go left if it hits the racket
    }

    if (y3 > height-rad || y3 < rad || collision())//shows what the ball would do if it hit the borders of the screen or if there was a collision with the racket (the command || means or)
    {
      yDirectionBall *= -1;//this shows that the direction of the ball would go down if it hit the borders of the screen pr if there was a collision with the racket
    }

    if (x3 > width-rad)//the command would happen if the ball goes out of the screen on the left side
    {

      if (score2 == 11) //total score
      {
        score1 = 0; //score1 and score2 mean the starting scores of the game
        score2 = 0;
      }
      else
      {
        score2 = score2 + 1; //every time the ball goes out of the screen on the right side, then the player with the blue racket would get one point added to their score until the score reaches 11
      }
      x3 = 150; //the x and y coordinates of when the ball would go out of the creen
      y3 = 380;
      fill(255,165,0); //numbers fill the color orange into the ball
      ellipse(x3,y3,width*0.016,height*0.025); //code of the parameters, or measurements of the ball, including their x and y positions
    }
    if (x3 < rad) //this is what would happen if the ball went out of the screen on the right side
    {
      if (score1 == 11) //total score
      {
        score1 = 0; //starting scores
        score2 = 0;
      }
      else
      {
        score1 = score1 + 1; //every time the ball goes out of the screen on the left side, the player with the red racket would get one point added to their score
      }
      x3 = 1225; //x and y coordinates of the ball of when the ball would go out on the screen
      y3 = 380;
      fill(255,165,0); //the color of the ball
      ellipse(x3,y3,height*0.016,height*0.025);//the measurements of the ball
      
    } 
      
    x3 = x3 + (random(xballSpeed, 2.5*xballSpeed) * xDirectionBall); //what the ball would have to do when moving left to right
    y3 = y3 + (random(yballSpeed, 2.5*yballSpeed) * yDirectionBall); //what the ball would have to do when moving up and down
    
  noStroke();
  fill(255,165,0); 
  ellipse(x3,y3,width*0.016,height*0.025);
  
  noStroke(); //no outline on the racket
  fill(0,0,255); //fills in the color of blue on the racket
  rect(x2,y2,width*0.02,height*0.125); //the measurements of the blue racket, including x and y positions
  
  noStroke();
  fill(255,0,0); //fills in the color of red on the racket
  rect(x1,y1,width*0.02,height*0.125); //the measurements of the red racket, including x and y positions
  
  if (keyPressed == true) //what would happen when pressing the blue racket
  {
    if(key == 'w' && y2 > 50) //when the w key is pressed, the blue racket moves up until the end of the screen
    {
       yDirectionBat2 = -1; //the direction of the racket going up
       y2 = y2 + (yDirectionBat2*ybatSpeed); //how the racket is going to move
       fill(0,0,255);
       rect(x2,y2,width*0.02,height*0.125);
    }
    else if (key == 's' && y2 < 800) //when the s key is pressed, the blue racket moves down until the end of the screen
    {
       yDirectionBat2 = 1; //the direction of the racket going down
       y2 = y2 + (yDirectionBat2*ybatSpeed); 
       fill(0,0,255);
       rect(x2,y2,width*0.02,height*0.125);
    }
    else if (key == 'a' && x2 > 30) //when the a key is pressed, the blue racket moves left until the end of the screen
    {
       xDirectionBat2 = -1; //the direction of the racket moving left
       x2 = x2 + (xDirectionBat2*xbatSpeed);
       fill(0,0,255);
       rect(x2,y2,width*0.02,height*0.125);
    }
    else if(key == 'd') //when the d key is pressed, the blue racket moves right all over the player's side of the table
    {
       xDirectionBat2 = 1; //the direction of the racket moving right
       x2 = x2 + (xDirectionBat2*xbatSpeed);
       fill(0,0,255);
       rect(x2,y2,width*0.02,height*0.125);
    }
  }


    
  
  

 }

boolean collision() { //the function of the ball hitting the racket
  
  boolean returnValue = false; // assume there is no collision
  
  if ((x3 >= x1 - 30) && (x3 <= x1 + 30)) { //what would happen if the ball hits the red racket moving left and right
    if ((y3 >= y1) && (y3 <= y1 + 100)) { //what would happen if the ball hits the red racket going up and down
        returnValue = true; //assuming there is a collision
    }
  }
  
  if ((x3 >= x2 - 40) && (x3 <= x2 + 50)) { //what would happen if the ball hits the blue racket moving left and right and how much the ball would move
    if ((y3 >= y2) && (y3 <= y2 + 100)) { //what would happen if the ball hits the blue racket going up and down and how much the ball would ove
        returnValue = true;
    }
  } 
  return returnValue;
}
    
void keyPressed() //function of the keys being pressed. This function DOES NOT work for the letter keys if you want to hold the letter keys
{

  if(key == CODED) 
    {
      if(keyCode == UP && y1 > 50) //where the red racket would move if the up button if pressed
      {
         yDirectionBat1 = -1; //how much the red racket moves if the up button was pressed
         y1 = y1 + (yDirectionBat1*ybatSpeed);
         rect(x1,y1,width*0.02,height*0.125);
      }
      else if(keyCode == DOWN && y1 < 800) //where the red racket moves if the down button was pressed
      {
         yDirectionBat1 = 1; //how much the red racket moves if the down button was pressed
         y1 = y1 + (yDirectionBat1*ybatSpeed);
         rect(x1,y1,width*0.02,height*0.125);
      }
      else if(keyCode == LEFT) //where the red racket would move if the left button was pressed. All other arrow keys show how much it's going to move until the specific x or y coordinate, which the numbers and the inequalities represent
      {
         xDirectionBat1 = -1; //how much the red racket moves if the left button was pressed
         x1 = x1 + (xDirectionBat1*xbatSpeed);
         rect(x1,y1,width*0.02,height*0.125);
      }
      else if(keyCode == RIGHT && x1 < 1380) //where the red racket would move if the right button was pressed
      {
         xDirectionBat1 = 1; //how much the red racket would move if the right button was pressed
         x1 = x1 + (xDirectionBat1*xbatSpeed);
         rect(x1,y1,width*0.02,height*0.125);
      } //<>//
    }
    

}