PShape bat1;
int x = 6;
int y = 1;
int xDirection = 1;
int yDirection = -1;
float ySpeed = 0.5;
//float xPos = 1275;
//float yPos = 410;
//float xSpeed = 2.2;
//float ySpeed = 2.2;

void setup()
{
  fullScreen();
  background(0);
}
void draw()
{
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
  rect(80,410,30,100);
  
  noStroke();
  fill(255,0,0);
  bat1 = createShape(RECT,0,0,30,100);
  //shape(bat1,x,y);
  //rect(x,y,30,100);
  
  y=ySpeed * yDirection;
  if(y>width)
  yDirection
  
 }
//float x = 1275;
//float y = 410;

void keyPressed()
{
  shape(bat1,1275,410);
  if(key == CODED) {
    if(keyCode == UP) 
    //xPos = xPos + (xSpeed * xDirection);
    //yPos = yPos + (ySpeed * yDirection);  
  if(y<height)
  {
   yDirection = 20;
  }
  y = y + (yDirection * 20);
 }
      //if (y<width)
     //{
     // yDirection = -100;
     //}
     //{
    //  y = y + (yDirection * 20);
   
        //shape(bat1,1275,410);
     //   translate(0,-100);
       // fill(255,0,0);
       // rect(x,y,30,100);
        //bat1 = createShape(RECT,0,0,30,100);
        //shape(bat1,x,y);
        //bat1.translate(0,-100);
        //draw();
      // 
      //  
        //y += 100;
        //bat1.translate(0,100);
        //draw();
      //
      //else if(keyCode == LEFT) {
        //x -= 100;
        //bat1.translate(-100,0);
        //noStroke();
        //fill(255,0,0);
        
      //}
      //else if(keyCode == RIGHT) {
       // x += 100;
       // bat1.translate(100,0);
      }


     