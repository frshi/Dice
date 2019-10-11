Die one, two, three, four, five, six, seven, eight, nine;
void setup()
{
	size(300, 400);
	noLoop();
	one = new Die(55,55);
	two = new Die(130,55);
	three = new Die(205,55);
	four = new Die(55,130);
	five = new Die(130,130);
	six = new Die(205,130);
	seven = new Die(55,205);
	eight = new Die(130,205);
	nine = new Die(205,205);
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
	int sum = one.num + two.num + three.num + four.num + five.num + six.num + seven.num + eight.num + nine.num;
	fill(255);
	textSize(60);
	text("Total: " + sum,20,350);
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
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX,myY,40,40);
		fill(0);
		if (num == 1)
		{
			ellipse(myX+20, myY+20, 5,5);
		}
		else if(num == 2)
		{
			ellipse(myX+20-10, myY+20-10, 5,5);
			ellipse(myX+20+10, myY+20+10, 5,5);
		}
		else if(num == 3)
		{	ellipse(myX+20-10, myY+20-10, 5,5);
			ellipse(myX+20+10, myY+20+10, 5,5);
			ellipse(myX+20, myY+20, 5,5);
		}
		else if(num == 4)
		{
			ellipse(myX+20+10, myY+20+10, 5,5);
			ellipse(myX+20+10, myY+20-10, 5,5);
			ellipse(myX+20-10, myY+20+10, 5,5);
			ellipse(myX+20-10, myY+20-10, 5,5);
		}
		else if(num == 5)
		{
			ellipse(myX+20+10, myY+20+10, 5,5);
			ellipse(myX+20+10, myY+20-10, 5,5);
			ellipse(myX+20-10, myY+20+10, 5,5);
			ellipse(myX+20-10, myY+20-10, 5,5);
			ellipse(myX+20, myY+20, 5,5);
		}
		else if(num == 6)
		{
			ellipse(myX+20-10, myY+20, 5,5);
			ellipse(myX+20+10, myY+20, 5,5);
			ellipse(myX+20-10, myY+20+10, 5,5);
			ellipse(myX+20+10, myY+20+10, 5,5);
			ellipse(myX+20-10, myY+20-10, 5,5);
			ellipse(myX+20+10, myY+20-10, 5,5);
		}
	}
}