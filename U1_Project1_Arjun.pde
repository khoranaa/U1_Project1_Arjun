float x1 = 1275;
float y1 = 410;
float x2 = 80;
float y2 = 410;
int xDirection = 1;
int yDirection = -1;
float xSpeed = 10;
float ySpeed = 10;

void setup()
{
  fullScreen();
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
  
  noStroke();
  fill(255,165,0);
  ellipse(150,460,40,40);
  
  noStroke();
  fill(0,0,255);
  rect(x2,y2,30,100);
  
  noStroke();
  fill(255,0,0);
  rect(x1,y1,30,100);
  
 }

void keyPressed()
{

  if(key == CODED) 
    {
      if(keyCode == UP)   
      {
         yDirection = -1;
         y1 = y1 + (yDirection*ySpeed);
         rect(x1,y1,30,100);
      }
      else if(keyCode == DOWN)
      {
         yDirection = 1;
         y1 = y1 + (yDirection*ySpeed);
         rect(x1,y1,30,100);
      }
      else if(keyCode == LEFT)
      {
         xDirection = -1;
         x1 = x1 + (xDirection*xSpeed);
         rect(x1,y1,30,100);
      }
      else if(keyCode == RIGHT)
      {
         xDirection = 1;
         x1 = x1 + (xDirection*xSpeed);
         rect(x1,y1,30,100);
      }

    }
    if(key == 'w')
    {
       yDirection = -1;
       y2 = y2 + (yDirection*ySpeed);
       rect(x2,y2,30,100);
    }
    else if (key == 's')
    {
       yDirection = 1;
       y2 = y2 + (yDirection*ySpeed);
       rect(x2,y2,30,100);
    }
    else if (key == 'a')
    {
       xDirection = -1;
       x2 = x2 + (xDirection*xSpeed);
       rect(x2,y2,30,100);
    }
    else if(key == 'd')
    {
       xDirection = 1;
       x2 = x2 + (xDirection*xSpeed);
       rect(x2,y2,30,100);
    }
}