public void setup() 
{
	size(600,600);
	background(0);
}
public void draw() 
{
	fractal(300,300,120);
}
public void fractal(float x, float y, float len)
{
	noFill();
	if(len >= 200)
		ellipse(x, y, len, len);
	else 
	{
		stroke(0,255,255);
		fractal(x-len/4,y,len+40);
		stroke(255,0,255);
		fractal(x,y-len/4,len+40);
		stroke(255,255,0);
		fractal(x+len/4,y,len+40);
		stroke(255,255,255);
		fractal(x,y+len/4,len+40);
		stroke(0,255,255);
		fractal(x+len,y-len,len+80);
		stroke(255,0,255);
		fractal(x+len,y+len,len+80);
		stroke(255,255,0);
		fractal(x-len,y+len,len+80);
		stroke(255,255,255);
		fractal(x-len,y-len,len+80);
	}
}