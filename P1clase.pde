class Particula{

  //Atributos

  float x,y;
  float t;
  color c;
  float r;
  float dx,dy,dr;
  int max;
  int cambio;
  float sat;

  

  Particula(float x_, float y_, float t_, float r_, float g_, float b_){

    this.x = x_;

    this.y = y_;

    this. t = t_;

    this.c = color(r_,g_,b_);

  }
  
 Particula(float x_ , float y_, float r_, float dx_, float dy_, float dr_, int max_, int cambio_){

    this.x = x_;

    this.y = y_;

    this.r = r_;

    this.dx = dx_;

    this.dy= dy_;

    this.dr = dr_;

    this.max = max_;

    this.cambio = cambio_;

    this.sat = random(255);

  }  
  
  
 

  void display(){

    rectMode(CENTER);

  

    translate(this.x,this.y);

   noStroke ();

    for(int i = this.max; i>0; i-= this.cambio){

      rotate(this.r);      

      fill (80,30,62);

      ellipse (0,0,i,i);

    }



  }

  

  void mover(){

    this.x += this.dx;

    this.y += this.dy;

    this.rebotar();

  }

  
  

  void rebotar(){

    if(this.x<0 || this.x>width){

      this.dx *= -1;

    }

    if(this.y<0 || this.y>height){

      this.dy *= -1;

    }

  }

  

}



//variables globales

Particula una;

Particula otra;

ArrayList <Particula> particulas;



void setup(){
 

  size(600,600);
  background (255);
   una = new Particula (random(400),random(400),random(TWO_PI),random(-2,2),random(-2,2),random(0.05),int(random(20,200)), int(random(2,10)));

  otra = new Particula(random(400),random(400),random(TWO_PI),random(-2,2),random(-2,2),random(0.05),int(random(20,200)), int(random(2,10)));

  

  particulas = new ArrayList <Particula>();

  

  particulas.add(new Particula(300,300,1,0,0.1,0.003,100,10));

  for( int i = 0; i<100; i++){

    particulas.add(new Particula(random(400),random(400),random(TWO_PI),random(-2,2),random(-2,2),random(0.05),int(random(20,200)), int(random(2,10))));

  }

  background(255);

}



void draw(){

  background(255);

  una.display();

  una.mover();

  otra.display();

  otra.mover();

  println(una.x);

  for(Particula p : particulas){

    p.mover();

    p.display();

  }
  
 background(255);

  noStroke();

  fill(255,0,0);

  x = mouseX;

  y = mouseY;

  //mousePressed en un escenario continuo, mientras presiono

  if (mousePressed == true){

   t++; 

  }

  ellipse(x,y,t,t);

  

  fill(0,0,255);

  ellipse(xt,yt,tt,tt);

  

  //teclado en forma continua, mientras presiono

  if(keyPressed == true){

    if(key == 'd'){

      xt++;

    }

    if(key == 'a'){

      xt--;

    }

    if(key == 'w'){

      yt--;

    }

    if(key == 's'){

      yt++;

    }

  }

}



void mousePressed(){

  t++;

}  
  
