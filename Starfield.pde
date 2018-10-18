//your code here

float c1;
float c2;
float c3;
float r1;
float r2;
float r3;
float a1;
float a2;
float a3;

Particle[] jo = new Particle[1000];

void setup() {
	//your code here
  c1 = (float)Math.random()*256;
  c2 = (float)Math.random()*256;
  c3 = (float)Math.random()*256;
  r1 = (float)Math.random()*256;
  r2 = (float)Math.random()*256;
  r3 = (float)Math.random()*256;
  a1 = (float)Math.random()*256;
  a2 = (float)Math.random()*256;
  a3 = (float)Math.random()*256;
  size(500, 500);
  for(int i = 0; i < jo.length; i++) {
    if(i == 0) {
      jo[i] = new OddballParticle();
    } else if(i % 3 == 0) { 
      jo[i] = new JumboParticle();
    } else {
      jo[i] = new NormalParticle();
    }
  }
}

void draw() {
	//your code here
  fill(0, 0, 0, 50);
  rect(-1, -1, width + 1, height + 1);
  for(int i = 0; i < jo.length; i++) {
    jo[i].display();
    jo[i].move();
  }
}


void mousePressed() {
  setup();
}


interface Particle {
  //your code here
  public void move();
  public void display();
}

class NormalParticle implements Particle {
	//your code here
  double x, y, angle, velocity;
  NormalParticle() {
    x = width/2;
    y = height/2;
    angle = Math.random()*Math.PI*2;
    velocity = (Math.random() * 3) + 1 ;
  }
  public void move() {
    x += Math.cos(angle) / velocity;
    y += Math.sin(angle) / velocity; 
  }
  public void display() {
    fill(c1, c2, c3, 20);
    stroke(c1, c2, c3);
    ellipse((float)x, (float)y, 15, 15);
  }
}

class OddballParticle implements Particle { //uses an interface
	//your code here
	double rx, ry;
	OddballParticle() {
    rx = (width/2) - 12;
    ry = (height/2) - 12;
	}
	public void move() {
    rx = (Math.random() * width);
    ry = (Math.random() * height);
	}
	public void display() {
    fill(r1, r2, r3, 50);
    stroke(r1, r2, r3);
		rect((float)rx, (float)ry, 24, 24);
	}
}

class JumboParticle extends NormalParticle { //uses inheritance
	//your code here
  JumboParticle() {
    
  }
  public void move() {
    x += Math.cos(angle) * (int)velocity;
    y += Math.sin(angle) * (int)velocity; 
  }
  public void display() {
    fill(a1, a2, a3, 50);
    stroke(a1, a2, a3);
    ellipse((float)x, (float)y, 25, 25);
  }
}
