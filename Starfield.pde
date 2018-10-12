//your code here
float c1 = (float)Math.random()*256;
float c2 = (float)Math.random()*256;
float c3 = (float)Math.random()*256;
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
  background(255);
  for(int i = 0; i < jo.length; i++) {
     jo[i].move();
     jo[i].display();
  }
}

void mousePressed() {
  redraw();
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
    fill(c1, c2, c3);
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
