class Asteroids extends Floater {
  private int rotSpeed;
  public Asteroids() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = (int)(Math.random()*9)+6;
    yCorners[1] = -10;
    xCorners[2] = (int)(Math.random()*9)+9;
    yCorners[2] = 0;
    xCorners[3] = (int)(Math.random()*9)+5;
    yCorners[3] = (int)(Math.random()*9)+9;
    xCorners[4] = -11;
    yCorners[4] = (int)(Math.random()*9)+7;
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
  
}  
