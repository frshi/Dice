Die one, two, three, four, five, six, seven, eight, nine;
void setup()
{
	size(300, 300);
	noLoop();
	one = new Die(75,75);
	two = new Die(150,75);
	three = new Die(225,75);
	four = new Die(75,150);
	five = new Die(150,150);
	six = new Die(225,150);
	seven = new Die(75,225);
	eight = new Die(150,225);
	nine = new Die(225,225);
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
	int myX, myY, num;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		num = 0;
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
		num = (int)(Math.random()*6)+1;
		fill(255);
		for(int i = 0; i < num; i++)
			ellipse(myX+i,myY+i,5,5);
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX,myY,40,40);
	}
}