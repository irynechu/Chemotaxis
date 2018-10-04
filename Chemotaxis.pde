//int x = 150;
Walker[] bob; 
 void setup()   
 {     
   
   size(600,600);
   bob = new Walker[100];
   for(int i = 0; i < bob.length; i++)
   {
     bob[i] = new Walker();
   }
 }   
 void draw()   
 {    
   
   background(252,245,105);
   fill(18,77,44);
   triangle(500,500,100,500,300,50);
   for(int i = 0; i < bob.length; i++)
   {
   bob[i].show();
   bob[i].walk();
   }
   
 }     
 class Walker
 {
   int myX,myY; 
   Walker()
   {
    myX = myY = 300;
   }
 
 void walk()
 {
  // myX = myX + (int)(Math.random()*8)-3;
  // myY = myY + (int)(Math.random()*8)-3;
 }
 void show()
 {
   fill(255,255,255);
   ellipse(myX,myY,60,40);
   
   fill(67,36,6);
   ellipse(myX,myY,30,30);
   fill(255,0,0);
   ellipse(myX,myY,10,10);
   if(mouseX > myX)
     myX = myX + (int)(Math.random()*11)-2; 
   else
     myX = myX + (int)(Math.random()*11)-9;
   if(mouseY > myY)
     myY = myY + (int)(Math.random()*11)-2;
   else
     myY = myY + (int)(Math.random()*11)-9;
 }
 }
