// U1_Project1_Arjun
//This is my Creative Coding Project. It is a 2-D multiplayer table tennis game.
//One player uses the arrow keys to move the red racket, while the other player uses WASD to move the blue racket.
//To get a point, the player has to send the ball in a direction in which the other player cannot reach it with his/her racket.
//The first person who gets to 11 points first wins. You can play as many games as possible before exiting the code. Enjoy this game!

float x1 = 1275;
float y1 = 410;
float x2 = 80;
float y2 = 410;
float x3 = 150;
float y3 = 460;
int xDirectionBat1 = 1;
int yDirectionBat1 = -1;
int xDirectionBat2 = 1;
int yDirectionBat2 = -1;
int xDirectionBall = 1;
int yDirectionBall = -1;
float xballSpeed = 6;
float yballSpeed = 6;
float xbatSpeed = 50;
float ybatSpeed = 50;
int rad = 20;
int score1 = 0;
int score2 = 0;

void setup()
{
  fullScreen();
  //noStroke();
  //frameRate(30);
  ellipseMode(RADIUS);
  x3 = width/2;
  y3 = height/2;
}
void draw()
{
  
  background(0);
  
  stroke(255);
  fill(0,255,0);
  rect(200,40,999,830);
  
  stroke(0);
  strokeWeight(15);
  line(705,40,705,870);

  stroke(255);
  strokeWeight(7);
  line(206,460,695,460);
 
  stroke(255);
  strokeWeight(7);
  line(715,460,1195,460);
  
  textSize(96);
  fill(0,0,255);
  text(score2, 400, 700); 

  textSize(96);
  fill(255, 0, 0);
  text(score1, 1000, 700); 
     
    
    if (collision()) 
    {
      xDirectionBall *= -1;
    }

    if (y3 > height-rad || y3 < rad || collision())
    {
      yDirectionBall *= -1;
    }

    if (x3 > width-rad)
    {

      if (score2 == 11)
      {
        score1 = 0;
        score2 = 0;
      }
      else
      {
        score2 = score2 + 1;
      }
      x3 = 150;
      y3 = 380;
      fill(255,165,0);
      ellipse(x3,y3,20,20);
    }
    if (x3 < rad)
    {
      if (score1 == 11)
      {
        score1 = 0;
        score2 = 0;
      }
      else
      {
        score1 = score1 + 1;
      }
      x3 = 1225;
      y3 = 380;
      fill(255,165,0);
      ellipse(x3,y3,20,20);
      
    } 
    
    
    x3 = x3 + (xballSpeed * xDirectionBall);
    y3 = y3 + (yballSpeed * yDirectionBall);
    
  noStroke();
  fill(255,165,0);
  ellipse(x3,y3,20,20);
  
  noStroke();
  fill(0,0,255);
  rect(x2,y2,30,100);
  
  noStroke();
  fill(255,0,0);
  rect(x1,y1,30,100);
  
  if (keyPressed == true) 
  {
    if(key == 'w' && y2 > 50)
    {
       yDirectionBat2 = -1;
       y2 = y2 + (yDirectionBat2*ybatSpeed);
       fill(0,0,255);
       rect(x2,y2,30,100);
    }
    else if (key == 's' && y2 < 800)
    {
       yDirectionBat2 = 1;
       y2 = y2 + (yDirectionBat2*ybatSpeed);
       fill(0,0,255);
       rect(x2,y2,30,100);
    }
    else if (key == 'a' && x2 > 30)
    {
       xDirectionBat2 = -1;
       x2 = x2 + (xDirectionBat2*xbatSpeed);
       fill(0,0,255);
       rect(x2,y2,30,100);
    }
    else if(key == 'd')
    {
       xDirectionBat2 = 1;
       x2 = x2 + (xDirectionBat2*xbatSpeed);
       fill(0,0,255);
       rect(x2,y2,30,100);
    }
  }


    
  
  

 }

boolean collision() {
  
  boolean returnValue = false; // assume there is no collision
  
  if ((x3 >= x1 - 30) && (x3 <= x1 + 30)) {
    if ((y3 >= y1) && (y3 <= y1 + 100)) {
        returnValue = true;
    }
  }
  
  if ((x3 >= x2 - 40) && (x3 <= x2 + 50)) {
    if ((y3 >= y2) && (y3 <= y2 + 100)) {
        returnValue = true;
    }
  } 
  return returnValue;
}
    
void keyPressed()
{

  if(key == CODED) 
    {
      if(keyCode == UP && y1 > 50)   
      {
         yDirectionBat1 = -1;
         y1 = y1 + (yDirectionBat1*ybatSpeed);
         rect(x1,y1,30,100);
      }
      else if(keyCode == DOWN && y1 < 800)
      {
         yDirectionBat1 = 1;
         y1 = y1 + (yDirectionBat1*ybatSpeed);
         rect(x1,y1,30,100);
      }
      else if(keyCode == LEFT)
      {
         xDirectionBat1 = -1;
         x1 = x1 + (xDirectionBat1*xbatSpeed);
         rect(x1,y1,30,100);
      }
      else if(keyCode == RIGHT && x1 < 1380)
      {
         xDirectionBat1 = 1;
         x1 = x1 + (xDirectionBat1*xbatSpeed);
         rect(x1,y1,30,100);
      } //<>//
// Make rackets move when letter keys are held. 
    }
    

}