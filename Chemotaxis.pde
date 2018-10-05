Bacteria [] bob;
void setup()   
{     
  size(500, 500);
  bob = new Bacteria[8];
  for (int i = 0; i<bob.length; i++)
  {
    bob[i] = new Bacteria();
  }
  //initialize bacteria variables here
}   
void draw()   
{    
  background(0);
  for (int i=0; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
    //move and show the bacteria
  }
}
class Bacteria    
{     
  int myX, myY;
  Bacteria(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void move()
  {
    myX = myX + (int) (Math.random()*3)-1;
    myY = myY + (int) (Math.random()*3)-1;
  }
  void show()
  {
    fill(255);
    ellipse(myX, myY, 10, 10);
  }
}
