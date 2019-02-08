int change = 4;
public void setup()
{
  size(1000,1000);
  ellipseMode(CENTER);
}

public void draw()
{
  background(0);
  myFractal(500,500,500);
}

public void keyPressed(){
  if(keyCode == UP)
    change = change + 1;
   if(keyCode == DOWN)
     change = change - 1;
   if(change == 0)
     change = 5;
   if(change == 100)
     change = 1;
     
}
public void myFractal(int x, int y, int want)
{
  fill(want/5,want/2,want);
  ellipse(x,y,want,want);
  if(want > 20)
  {
    myFractal(x-want/change,y,want/2);
    
    myFractal(x+want/change,y,want/2);
    
    myFractal(x,y+want/change,want/2);
    
    myFractal(x,y-want/change,want/2);

  }
}
