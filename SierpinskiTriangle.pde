float inc = 0;
public void setup()
{
	size(800,(int)(800*(Math.sqrt(3)/2)));
	frameRate(200);
}
public void draw()
{
	background(255);
	sierpinski(0, (float)(800*(Math.sqrt(3)/2)), 800+inc, 1);
	inc+=5;

	if(inc>800){
		inc = 0;
	}

}
public void mouseDragged()//optional
{

}
public void sierpinski(float x, float y, float len, int colour) 
{
	float hi = (float)((Math.sqrt(3)/2)*(len/2));
	float half = len/2;
	float quarter = len/4;
	// if(colour % 2 == 0){
	// 	fill(0);
	// } else fill(255);
	if(len>100){
		stroke(0);
		triangle(x, y, x+half, y, x+quarter, y-hi);
		triangle(x+half, y, x+len, y, x+half+quarter, y-hi);
		triangle(x+quarter, y-hi, x+quarter+half, y-hi, x+half, y-(2*hi));
		sierpinski(x, y, len/2, colour+1);
		sierpinski(x+half, y, len/2, colour+1);
		sierpinski(x+quarter, y-hi, len/2, colour+1);
	}
}