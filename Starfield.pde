//your code here
void setup()
{
	size(600,600);
	par = new NormalParticle [100];
	for (int i = 0; i <par.length;i ++){
		par [i] = new NormalParticle();
	}
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double myX,myY, mySpeed, myAngle;
	int myColor;

	NormalParticle(){
		
		myX = (int)(Math.random()*250 + 200);
		myY = (int)(Math.random()*250 + 200);
		myColor = color (myX,myY,myY);
		
	}
	void move(){

	}
	void show(){
		
		fill(color);

	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

