//declare bacteria variables here 
 Bacteria []one;
 void setup()   
 {     
   size(700, 700);
   //initialize bacteria variables here   
   one = new Bacteria[100];
   for(int i = 0; i<one.length; i++){
     one[i]=new Bacteria();
   }
 }   
 void draw()   
 {    
   background(183,222,210);
   for(int i = 0; i<one.length; i++){
     one[i].show();
     one[i].move();
   }
   //move and show the bacteria   
 }  
 class Bacteria    
 {     
   int myX, myY, myColor, mycolor, otherX, otherY, a, b, c , d, e, f;
   Bacteria(){
     myX = (int)(Math.random()*700);
     myY = (int)(Math.random()*700);
     //this is for the random dots on every instance
     otherX = (int)(Math.random()*20-10);
     otherY = (int)(Math.random()*20-10);
     a = (int)(Math.random()*20-10);
     b = (int)(Math.random()*20-10);
     c = (int)(Math.random()*20-10);
     d = (int)(Math.random()*20-10);
     e = (int)(Math.random()*20-10);
     f = (int)(Math.random()*20-10);
     myColor = color(40, 77, 65);
     mycolor = color(198, 162, 198);
   }
   void move(){
     if(mouseX>myX)
     myX = myX + (int)(Math.random()*5-1);
     else
     myX = myX + (int)(Math.random()*5-3);
      if(mouseY>myY)
     myY = myY + (int)(Math.random()*5-1);
     else
     myY = myY + (int)(Math.random()*5-3);
   }
   void show(){
     fill(myColor);
  ellipse(myX, myY, 50, 50);
  fill(mycolor);
  ellipse(myX, myY, 40, 40);
  ellipse(mouseX, mouseY, 7, 7);
  fill(myColor);
  ellipse(myX+otherX, myY+otherY, 7, 7);
   ellipse(myX+a, myY+b, 7, 7);
    ellipse(myX+c, myY+d, 7, 7);
     ellipse(myX+e, myY+f, 7, 7);
     
   }
 }   
