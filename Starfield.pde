//your code here
Particle [] par;
void setup()
{
	noStroke();
	size(600,600);
	par = new Particle [100];
	for (int i = 0; i <par.length;i ++){
		par [i] = new NormalParticle();
	}
}
void draw()
{
	background(20,0,0);
	for (int i = 0; i <par.length;i ++){
		par [i].move();
		par [i].show();
	}

}

class NormalParticle implements Particle
{
	double myX,myY, mySpeed, myAngle;
	int myColor;

	NormalParticle(){
			
		myX = (int)(Math.random()*250 + 200);
		myY = (int)(Math.random()*250 + 200);
		myColor = color ((int)(Math.random()*240 + 50),(int)(Math.random()*40+50),(int)(Math.random()*40+50));
		mySpeed = Math.random()*8;
		myAngle = Math.PI*2*Math.random();

	}
	void move(){
		myX += Math.cos(myAngle)*(mySpeed);
		myY += Math.sin(myAngle)*(mySpeed);
		if (myX > 600 || myY > 600 || myX < 0 || myY < 0)
		{
			myX = 300;
			myY = 300;
			mySpeed = mySpeed - 1;
		}
	}
	void show(){

		fill(myColor);
		ellipse((float)myX,(float)myY,25,25);

	}
}

interface Particle
{
	public void show();

	public void move();
}

class OddballParticle implements Particle //uses an interface
{
	double itX,itY, itSpeed, itAngle;//your code here
	int itColor;

	OddballParticle(){
		itX = (int)(Math.random()*250 + 200);
		itY = (int)(Math.random()*250 + 200);
		itSpeed = Math.random()*8;
		itAngle = Math.PI*2*Math.random();
	}
	void move(){
		itX += Math.cos(itAngle)*(itSpeed);
		itY += Math.sin(itAngle)*(itSpeed);
		if (itX > 600 || itY > 600 || itX < 0 || itY < 0)
		{
			itX = 300;
			itY = 300;
		}
	}
	void show(){

		fill(240,200,200);
		ellipse((float)itX,(float)itY,50,50);	

	}

}
//class JumboParticle extends Particle //uses inheritance
//{
	//your code here
//}

