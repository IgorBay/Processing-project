float x,y,r,p,g,h;
float n = TWO_PI;
void setup(){ 
  size(1000,1000);
  stroke(255,25,13);
  r=150;
  p=50;
  g=100;
  h=200;
}
void draw() {
   background(25,155,6);
   ellipse(500,500,450,450);
   rect(482,483,35,35);
  n=n+1;
  x=500+round(r*sin(PI*n/90));
  y=500+round(r*cos(PI*n/90));
  ellipse(x,y,50,50); 
  x=500+round(p*sin(PI*n/90));
  y=500+round(p*cos(PI*n/90));
  ellipse(x,y,50,50); 
  x=500+round(g*cos(PI*n/90));
  y=500+round(g*sin(PI*n/90));
  ellipse(x,y,50,50); 
  x=500+round(h*cos(PI*n/90));
  y=500+round(h*sin(PI*n/90));
  ellipse(x,y,50,50); 
}