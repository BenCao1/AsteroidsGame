Star [] spaceStars = new Star[400];
Spaceship ship = new Spaceship();
ArrayList <Asteroids> AsteroidsBelt;
ArrayList <Bullet> shoot;

boolean left = false;
boolean right = false;
boolean up = false;
boolean down = false;
boolean fire = false;

public void keyPressed() {
  if(key == CODED && keyCode == UP){up = true;}  
  if(key == CODED && keyCode == DOWN){down = true;}
  if(key == CODED && keyCode == LEFT){left = true;}
  if(key == CODED && keyCode == RIGHT){right = true;} 
  if(key == 'h') {
    ship.setCenterX((int)(Math.random() * 851));
    ship.setCenterY((int)(Math.random() * 851));
    ship.setDirectionX(0);
    ship.setDirectionY(0);
    ship.setPointDirection((int)(Math.random() * 361));
  }
    if(key==' '){
    shoot.add(new Bullet(ship));
  }
}  

public void keyReleased() { 
  if(key == CODED && keyCode == UP){ 
    up = false;
    ship.setDirectionX(0);
    ship.setDirectionY(0);
  }
  else if(key == CODED && keyCode == DOWN){ 
    down = false;
    ship.setDirectionX(0);
    ship.setDirectionY(0);
  }
  else if(key == CODED && keyCode == LEFT){ 
    left = false;
  }
  else if(key == CODED && keyCode == RIGHT){ 
    right = false;
  }
}

public void setup() 
{
  size(850, 850);
  for (int i = 0; i < spaceStars.length; i++) {
    spaceStars[i] = new Star();    
  }  
  AsteroidsBelt = new ArrayList <Asteroids>();
  for (int i = 0; i < 30; i++) {
    AsteroidsBelt.add(i, new Asteroids());  
  }
  shoot = new ArrayList<Bullet>();
}
public void draw() 
{
  background(0);
  for (int i = 0; i < spaceStars.length; i++) {
    spaceStars[i].show();
  }
  for (int i = 0; i < AsteroidsBelt.size(); i++) {
        AsteroidsBelt.get(i).show();
        AsteroidsBelt.get(i).move();
  }  
  for(int i = AsteroidsBelt.size()-1; i >= 0; i--)
  {
    if(dist((float)ship.getCenterX(), (float)ship.getCenterY(), (float)AsteroidsBelt.get(i).getCenterX(), (float)AsteroidsBelt.get(i).getCenterY()) < 20)
    {
      AsteroidsBelt.remove(i);
    }
  }  
  for (int i = 0; i < shoot.size(); i++) {
     shoot.get(i).show();
     shoot.get(i).move();
  }  
  for (int a = AsteroidsBelt.size() - 1 ; a >= 0; a--) {
     for (int b = shoot.size() - 1; b>= 0; b--) {
       if (dist((float)shoot.get(b).getX(), (float)shoot.get(b).getY(), (float)AsteroidsBelt.get(a).getCenterX(), (float)AsteroidsBelt.get(a).getCenterY()) < 15) {
         shoot.remove(b);
         AsteroidsBelt.remove(a); 
         break;
       }  
       
     }  
  }  
  ship.show();
  ship.move();
  if (left == true){ship.setPointDirection((int)(ship.getPointDirection()-5));}
  if (right == true){ship.setPointDirection((int)(ship.getPointDirection()+5));}
  if (up == true){ship.accelerate(.1);}
  if (down  == true){ship.accelerate(-.1);}
}  
  
