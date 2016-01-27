public void setup()
{
	size(800,800);
	noLoop();
}
public void draw()
{
	sierpinski(0, 800, 800);
}
public void mouseDragged()//optional
{

}
public void sierpinski(float x, float y, float len) 
{
	float hi = (float)((Math.sqrt(3)/2)*(len/2));
	float half = len/2;
	float quarter = len/4;
	if(len>10){
		stroke(0);
		triangle(x, y, x+half, y, x+quarter, y-hi);
		triangle(x+half, y, x+len, y, x+half+quarter, y-hi);
		triangle(x+quarter, y-hi, x+quarter+half, y-hi, x+half, y-(2*hi));
		sierpinski(x, y, len/2);
		sierpinski(x+half, y, len/2);
		sierpinski(x+quarter, y-hi, len/2);
	}
}