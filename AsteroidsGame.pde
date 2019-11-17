Star [] spaceStars = new Star[250];
Spaceship ship = new Spaceship();

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
    ship.setCenterX((int)(Math.random() * 501));
    ship.setCenterY((int)(Math.random() * 501));
    ship.setDirectionX(0);
    ship.setDirectionY(0);
    ship.setPointDirection((int)(Math.random() * 361));
  }
}  

public void keyReleased() { 
  if(key == CODED && keyCode == UP){ 
    up = false;
  }
  else if(key == CODED && keyCode == DOWN){ 
    down = false;
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
  size(500, 500);
  for (int i = 0; i < spaceStars.length; i++) {
    spaceStars[i] = new Star();    
  }  
}
public void draw() 
{
  background(0);
  for (int i = 0; i < spaceStars.length; i++) {
    spaceStars[i].show();
  }
  ship.show();
  ship.move();
  if (left == true){ship.setPointDirection((int)(ship.getPointDirection()-5));}
  if (right == true){ship.setPointDirection((int)(ship.getPointDirection()+5));}
  if (up == true){ship.accelerate(.1);}
  if (down  == true){ship.accelerate(-.1);}
}  
  
