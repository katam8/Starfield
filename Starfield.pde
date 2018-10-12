//your code here
NormalParticle[] jo = new NormalParticle[1000];

void setup() {
	//your code here
  size(500, 500);
  for(int i = 0; i < jo.length; i++) {
    jo[i] = new NormalParticle();
  }
}

void draw() {
	//your code here
  for(int i = 0; i < jo.length; i++) {
     jo[i].move();
     jo[i].display();
  }
}

class NormalParticle {
	//your code here
  double x, y, angle, velocity;
  NormalParticle() {
    x = width/2;
    y = height/2;
    angle = Math.random()*Math.PI*2;
    velocity = Math.random() * 2 ;
  }
  void move() {
    x += Math.cos(angle) / velocity * 2;
    y += Math.sin(angle) / velocity * 2; 
  }
  void display() {
    fill(0);
    noStroke();
    ellipse((float)x, (float)y, 20, 20);
  }
}

interface Particle {
	//your code here
}

class OddballParticle { //uses an interface
	//your code here
}

class JumboParticle { //uses inheritance
	//your code here
}
