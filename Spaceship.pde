class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myCenterX = 255;
      myCenterY = 255;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;
      myColor = 255;
    }
      
     public void setCenterX(int x) {
        myCenterX = x;
     }  
     public double getCenterX() {
       return myCenterX;
     }
     public void setCenterY(int y) {
        myCenterY = y;
     }  
     public double getCenterY() {
       return myCenterY;
     }
     public void setDirectionX (double x) {
       myDirectionX = x;
     }
     public double getDirectionX () {
       return myDirectionX;
     }
     public void setDirectionY (double y) {
       myDirectionY = y;
     }
     public double getDirectionY () {
       return myDirectionY;
     }
     public double getPointDirection () {
       return myPointDirection;
     }
     public void setPointDirection (double degrees) {
       myPointDirection = degrees;
     }  
     
     
    
}
