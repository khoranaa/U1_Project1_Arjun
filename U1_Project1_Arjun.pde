float x1 = 1275;
float y1 = 410;
float x2 = 80;
float y2 = 410;
float x3 = 150;
float y3 = 460;
int xDirection = 1;
int yDirection = -1;
float xballSpeed = 10;
float yballSpeed = 10;
float xbatSpeed = 20;
float ybatSpeed = 20;
int rad = 20;

void setup()
{
  fullScreen();
  noStroke();
  frameRate(30);
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
  
    
    if (x3 > width-rad|| x3 < rad) 
    {
      xDirection *= -1;
    }

    if (y3 > height-rad || y3 < rad)
    {
      yDirection *= -1;
    }

    x3 = x3 + (xballSpeed * xDirection);
    y3 = y3 + (yballSpeed * yDirection);
    
  noStroke();
  fill(255,165,0);
  ellipse(x3,y3,20,20);
  
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
         y1 = y1 + (yDirection*ybatSpeed);
         rect(x1,y1,30,100);
      }
      else if(keyCode == DOWN)
      {
         yDirection = 1;
         y1 = y1 + (yDirection*ybatSpeed);
         rect(x1,y1,30,100);
      }
      else if(keyCode == LEFT)
      {
         xDirection = -1;
         x1 = x1 + (xDirection*xbatSpeed);
         rect(x1,y1,30,100);
      }
      else if(keyCode == RIGHT)
      {
         xDirection = 1;
         x1 = x1 + (xDirection*xbatSpeed);
         rect(x1,y1,30,100);
      } //<>//
// Make rackets move when letter keys are held. 
    }
    if(key == 'w')
    {
       yDirection = -1;
       y2 = y2 + (yDirection*ybatSpeed);
       rect(x2,y2,30,100);
    }
    else if (key == 's')
    {
       yDirection = 1;
       y2 = y2 + (yDirection*ybatSpeed);
       rect(x2,y2,30,100);
    }
    else if (key == 'a')
    {
       xDirection = -1;
       x2 = x2 + (xDirection*xbatSpeed);
       rect(x2,y2,30,100);
    }
    else if(key == 'd')
    {
       xDirection = 1;
       x2 = x2 + (xDirection*xbatSpeed);
       rect(x2,y2,30,100);
    }
}