int z = color(200);
 void setup()   
 {     
 	size(500,500);
 	Bacteria[] bobbu;
 	bobbu = new Bacteria[5];
 	for(int i = 0; i < bobbu.length; i++)
 	{
 		bobbu[i] = new Bacteria();
 	}
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	background (255);
 	for(int i = 0; i < bobbu.length; i++)
 	{
 		bobbu[i].show;
 	}
 	//move and show the bacteria   
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
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,5,5);


 	}



 	//lots of java!   
 }    