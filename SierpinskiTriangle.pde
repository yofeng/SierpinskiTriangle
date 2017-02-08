public void setup()
{
	size(500,500);
	background(45,0,50);
}
public void draw()
{
	noStroke();
	//fill(200,200,200);
	//sierpinski(205,480,100,100);
	sierpinski(28,480,450);
}
public void mouseDragged()//optional
{

}
/*
public void sierpinski(int x, int y, int width, int height) 
{
	if(width<=30)
		ellipse(x, y, width, height);
	else
	{
		sierpinski(x, y, width/2, height/2);
		sierpinski(x+width/2, y, width/2, height/2);
		sierpinski(x+width/4, y-height/2, width/2, height/2);		
	}
}
*/
public void sierpinski(int x, int y, int len) 
{
	if(len<=20)
		triangle(x, y, x+len, y, x+len/2, y-len);
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);		
	}
}
