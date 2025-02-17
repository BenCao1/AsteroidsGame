class Bullet extends Floater
{
  Bullet(Spaceship theship)
  {
    myCenterX = theship.getCenterX();
    myCenterY = theship.getCenterY();
    myPointDirection = theship.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5*Math.cos(dRadians) + theship.getDirectionX();
    myDirectionY = 5*Math.sin(dRadians) + theship.getDirectionY();
  }
  public void show()
  {
    fill(0,0,0);
    ellipse((int)myCenterX,(int)myCenterY,3,3);
  }
  public void move()
  {
    myCenterX+=myDirectionX;
    myCenterY+=myDirectionY;
  }
  public void setX(int x){myCenterX = x;}  
    public int getX(){return (int)myCenterX;}   
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;}   
    public void setDirectionX(double x){myDirectionX = x;}   
    public double getDirectionX(){return myDirectionX;}   
    public void setDirectionY(double y){myDirectionY = y;}   
    public double getDirectionY(){return myDirectionY;}   
    public void setPointDirection(int degrees){myPointDirection = degrees;}   
    public double getPointDirection(){return myPointDirection;} 
}
