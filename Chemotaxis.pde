Bacteria [] bob;
void setup()   
{     
  int z = color(255, 0, 0);
  int y = color(255, 255, 255);
  size(500, 500);
  bob = new Bacteria[500];
  for (int i = 0; i<bob.length; i++)
  {
    if (i%3 == 0) {
      bob[i] = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500), y);
    } else {
      bob[i] = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500), z);
    }
  }
  //initialize bacteria variables here
}   
void draw()   
{    
  background(249, 187, 230);
  for (int i=0; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
    //move and show the bacteria
  }
}
class Bacteria    
{     
  int myX, myY, myColor;
  Bacteria(int x, int y, int z)
  {
    myX = x;
    myY = y;
    myColor = z;
  }
  void move()
  {
    myX = myX + (int) (Math.random()*3)-1;
    myY = myY + (int) (Math.random()*3)-1;
  }
  void show()
  {
    fill(myColor);
    ellipse(myX, myY, 10, 10);
  }
}
