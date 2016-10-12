//your code here
void setup()
{
	size(600,600);
	par[] = new NormalParticle [100];
	for (int i = 0; i <par.length;i ++){
		par [i] = new NormalParticle();
	}
}
void draw()
{
	ellipse(myX,myY,50,50);
}

class NormalParticle
{
	double myX,myY, mySpeed, myAngle;
	int myColor;

	NormalParticle(){
			
		myX = (int)(Math.random()*250 + 200);
		myY = (int)(Math.random()*250 + 200);
		myColor = color (myX,myY,myY);
		mySpeed = Math.random()*10;
		myAngle = Math.PI*2*Math.random();

	}
	void move(){
		myX += Math.cos(myAngle)*(mySpeed);
		mY += Math.sin(myAngle)*(mySpeed) ;
	}
	void show(){

		fill(myColor);

	}
}
interface Particle
{
	public void show();

	public void move();
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

