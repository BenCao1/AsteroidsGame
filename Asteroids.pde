class Asteroids extends Floater {
  private int rotSpeed;
  public Asteroids() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = (int)(Math.random()*15)+6;
    yCorners[1] = -10;
    xCorners[2] = (int)(Math.random()*10)+9;
    yCorners[2] = 0;
    xCorners[3] = (int)(Math.random()*15)+5;
    yCorners[3] = (int)(Math.random()*10)+9;
    xCorners[4] = -11;
    yCorners[4] = (int)(Math.random()*15)+7;
    xCorners[5] = -13;
    yCorners[5] = 0;

    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);

    myDirectionX = (Math.random()*3)-1;
    myDirectionY = (Math.random()*3)-1;

    myColor = color(220);

    myPointDirection = (int)(Math.random()*360);

    rotSpeed = (int)((Math.random()*5)-3);    
  }
  
  public void move() {
   turn(rotSpeed);
   super.move();
 }    
 
   public double getCenterX() {
     return myCenterX;
  }
  public double getCenterY () {
    return myCenterY;  
  }  
  
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    //fill(255, 0, 0);
    fill((int)((Math.random()*256)+100), (int)((Math.random()*256)+100), (int)((Math.random()*256)+100));
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}  
