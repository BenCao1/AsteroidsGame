class Star //note that this class does NOT extend Floater
{
  private int myX;
  private int myY;
  public Star() {
    myX = (int)(Math.random() * 851);
    myY = (int)(Math.random() * 851);
  }  
  public void show() {
    noStroke();
    fill((int)((Math.random()*256)), (int)((Math.random()*256)), (int)((Math.random()*256)));
    ellipse(myX, myY, 3, 3);  
  }  
}
