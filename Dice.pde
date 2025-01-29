   //Die die1;
     int totalSum;
     int roll;  
        void setup()
  {
    noLoop();
    size(300,350);
  }
  void draw()
  {
    totalSum = 0;
    background(0,122,31);
    //int RdmX = (int) (Math.random()*50);
    //int RdmY = (int) (Math.random()*50);
    //Die die1 = new Die(15,15);
    for(int x = 14;x<300; x+=75) {
      for(int y = 14;y<300;y+=75){
        Die die1 = new Die(1 + x, 1 + y);
        
        die1.show();
        totalSum += die1.val;
        //die1.roll();
      }
    }
   textSize(20);
   text("Total Sum: " + totalSum, 20, 325);
  }
   void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
    int xPos;
    int yPos;
    int val;
      
      Die(int x, int y) //constructor
      {
         xPos = x;
         yPos = y;
         roll();
         
      }
      void roll()
      {
         val = (int) (Math.random()*6)+1;
      }
      void show()
      {
        fill(255);
        rect(xPos,yPos,50,50,3);
        
        
        if(val==1) {
        fill(255,0,0);                          /*Die 1*/
        ellipse(xPos+25,yPos+25,10,10);
      }
        
        else if(val==2) {
        fill(0);                          /*Die 2*/
        ellipse(xPos+13,yPos+13,10,10);
        ellipse(xPos+37,yPos+37,10,10);
      }
        
        else if(val==3) {
        fill(255,0,0);                          
        ellipse(xPos+13,yPos+13,10,10);    /*Die 3*/
        ellipse(xPos+25,yPos+25,10,10);
        ellipse(xPos+37,yPos+37,10,10); 
      }
        
        else if(val==4) {
        fill(0);                          
        ellipse(xPos+13,yPos+13,10,10);
        ellipse(xPos+13,yPos+37,10,10);       /*Die 4*/
        ellipse(xPos+37,yPos+37,10,10);
        ellipse(xPos+37,yPos+13,10,10); 
      }
        
        else if(val==5) {
        fill(255,0,0);                          
        ellipse(xPos+13,yPos+13,10,10);
        ellipse(xPos+13,yPos+37,10,10);     
        ellipse(xPos+25,yPos+25,10,10);    /*Die 5*/
        ellipse(xPos+37,yPos+37,10,10);
        ellipse(xPos+37,yPos+13,10,10); 
      }
        
        else if(val==6) {
        fill(0);                          
        ellipse(xPos+13,yPos+13,10,10);
        ellipse(xPos+13,yPos+37,10,10);
        ellipse(xPos+13,yPos+25,10,10);     /*Die 6*/
        ellipse(xPos+37,yPos+37,10,10);
        ellipse(xPos+37,yPos+13,10,10);
        ellipse(xPos+37,yPos+25,10,10);
      }
        
        
      }
  }
