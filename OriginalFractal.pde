double change = 4;
public void setup()
{
  size(800,800);
  ellipseMode(CENTER);
}

public void draw()
{
  background(0);
  myFractal(400,400,400);
  if(change <= 0.1)
     change = change + 0.1;
  if(change >= 30)
    change = change - 0.1;
  
}

public void keyPressed(){
  if(keyCode == UP)
    change = change + 0.1;
   if(keyCode == DOWN)
     change = change - 0.1;
   //if(change == 0)
     //change = 5;
   //if(change == 100)
     //change = 1;
     
}
public void myFractal(double x, double y, int want)
{
  fill(want/5,want/2,want);
  ellipse((int)x,(int)y,want,want);
  if(want > 20)
  {
    myFractal(x-want/change,y,want/2);
    
    myFractal(x+want/change,y,want/2);
    
    myFractal(x,y+want/change,want/2);
    
    myFractal(x,y-want/change,want/2);

  }
}
