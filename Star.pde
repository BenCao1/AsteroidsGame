class Star //note that this class does NOT extend Floater
{
  private int myX;
  private int myY;
  public Star() {
    myX = (int)(Math.random() * 501);
    myY = (int)(Math.random() * 501);
  }  
  public void show() {
    ellipse(myX, myY, 3, 3);  
  }  
}
