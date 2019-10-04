Die one, two, three, four, five, six, seven, eight, nine;
void setup()
{
	size(300, 300);
	noLoop();
	one = new Die();
	two = new Die();
	three = new Die();
	four = new Die();
	five = new Die();
	six = new Die();
	seven = new Die();
	eight = new Die();
	nine = new Die();
}
void draw()
{
	//your code here
	background(0);
	one.roll();
	one.show();
	two.roll();
	two.show();
	three.roll();
	three.show();
	four.roll();
	four.show();
	five.roll();
	five.show();
	six.roll();
	six.show();
	seven.roll();
	seven.show();
	eight.roll();
	eight.show();
	nine.roll();
	nine.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube	
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
		
	}
	void show()
	{
		//your code here
		fill(255);
		rect(x,y,40,40);
	}
}
