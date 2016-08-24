float x1 = 1275;
float y1 = 410;
float x2 = 80;
float y2 = 410;
float x3 = 150;
float y3 = 460;
int xDirection = 1;
int yDirection = -1;
float xballSpeed = 5;
float yballSpeed = 5;
float xbatSpeed = 20;
float ybatSpeed = 50;
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
  
    
    //if (x3 > width-rad || x3 < rad || collision()) 
    
    if (collision()) 
    {
      xDirection *= -1;
    }

    if (y3 > height-rad || y3 < rad || collision())
    {
      yDirection *= -1;
    }

    if (x3 > width-rad)
    {
      x3 = 150;
      y3 = 380;
      fill(255,165,0);
      ellipse(x3,y3,20,20);
    }
    if (x3 < rad)
    {
      x3 = 1225;
      y3 = 380;
      fill(255,165,0);
      ellipse(x3,y3,20,20);
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
  
  if (keyPressed == true) 
  {
    if(key == 'w' && y2 > 50)
    {
       yDirection = -1;
       y2 = y2 + (yDirection*ybatSpeed);
       fill(0,0,255);
       rect(x2,y2,30,100);
    }
    else if (key == 's' && y2 < 800)
    {
       yDirection = 1;
       y2 = y2 + (yDirection*ybatSpeed);
       fill(0,0,255);
       rect(x2,y2,30,100);
    }
    else if (key == 'a' && x2 > 30)
    {
       xDirection = -1;
       x2 = x2 + (xDirection*xbatSpeed);
       fill(0,0,255);
       rect(x2,y2,30,100);
    }
    else if(key == 'd')
    {
       xDirection = 1;
       x2 = x2 + (xDirection*xbatSpeed);
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
         yDirection = -1;
         y1 = y1 + (yDirection*ybatSpeed);
         rect(x1,y1,30,100);
      }
      else if(keyCode == DOWN && y1 < 800)
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
      else if(keyCode == RIGHT && x1 < 1380)
      {
         xDirection = 1;
         x1 = x1 + (xDirection*xbatSpeed);
         rect(x1,y1,30,100);
      } //<>//
// Make rackets move when letter keys are held. 
    }
    

}