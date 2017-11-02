  int score,ochki;
  int i;
  float time;
  float r = 50;
  float x = 500;
  float y = 750;

  Moon gold=new Moon();
  Moon silver=new Moon();

void setup()
{
  size(1000,800);
}


void draw()
{
  background(0,0,0);
  stroke(0,0,0);

  gold.a = 200;
  gold.b = 300;
  
  ellipse( gold.a , gold.b , gold .h , gold.w );
  fill(77,38,11);
  
  ellipse(x,y,100,100);
  fill(238,238,224);
  
  text("Время: "+time, 10,40);
  text("Очки: "+ score,10,20);
  
  time=time+0.1;
  if(time>=50)
  {PImage jmg = loadImage("GameOver.jpg");
  image(jmg,0,0,1000,800);}
  
  if(gold.a==x && gold.b==y)
    {score=score+1;}
    
  if(score>=1)
    {PImage img = loadImage("YouWin.jpg");
  image(img,0,0,1000,800);}
  
}
void keyPressed()
{
  if ( key == CODED )
{
  if ( keyCode == RIGHT ) 
  { x += 10;} 
  
  else if ( keyCode == LEFT )
  { x -= 10;}
          
  else if ( keyCode == UP )
  { y -= 10;} 
          
  else if ( keyCode == DOWN ) 
  { y += 10;}
}
  x = constrain( x, r, width-r ); 
  y = constrain( y, r, height-r );
}

class Moon {
  float x = 500;
  float y = 750;
  float h = 100;
  float w = 100;
  float a = random(50,950);
  float b = random(50,750);
}