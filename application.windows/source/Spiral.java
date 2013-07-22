import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class Spiral extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 13-5: Polar to Cartesian

// Polar coordinates (r, theta) are converted to Cartesian (x,y) 
// for use in the ellipse() function.

float r = 0,r2=2,x,y; 
float theta = 0,theta2=510.029f,xpos,ypos;
boolean flag=false;
String displayString="KIWI";
String displayString2="NEWZEA";

public void setup() {
  size(1920,1200);
  background(255);
  smooth();
  
  
  // Draw an ellipse at x,y
  noStroke();
  fill(0);
  
  textAlign(CENTER);
  //point(x+width/2,y + height/2);
 
 float x_eyelast=0,y_eyelast=0,theta_eyelast=0;
 
  while(r<550)
  {
    // Polar to Cartesian conversion
    x = r * cos(theta2);
    y = r * sin(theta2);
  
    //ellipse(x + width/2, y + height/2, 5, 5); // Adjust for center of window
    textSize((5+r/50));
    
    text(displayString.charAt(PApplet.parseInt(random(0,displayString.length()))), x + 1300 , y + height/2-200);
    //text(displayString.charAt(int(random(0,displayString.length()))), r *  sin(theta)  + 1300 , r* cos(theta) + height/2);
       
    if(r2<350)
    
    {
      x = r2 *  sin(theta);
      y = r2 * cos(theta);
      textSize(2+r/50);
      text(displayString.charAt(PApplet.parseInt(random(0,displayString.length()))), x + 650 , y + height/3-200);

      x_eyelast=x;y_eyelast=y;
      theta_eyelast=theta;
      //text(displayString.charAt(int(random(0,displayString.length()))), -(r2) *  cos(theta) + 650 , -(r2)* sin(theta) + height/3);
   
    }
    
    
    // Increment the angle
    theta += 0.029f;
    theta2-=0.06f;
    
    if(r<520.5f)
    r+=0.06f;
    //else r+=5;
    
    if(r2 <195.35f)
    r2+=0.03f;
    else r2+=10;
  
  }
  
  
    stroke(0);
    
    
// Drawing the Beak     
    
    
      //line(x_eyelast+650,y_eyelast+ height/3,650,height/3);
      textSize(8.8f);
      int i;
      
      for(i=0;i<15;i++)
      {  for(int j=2;j<10;j+=2)
          {
            xpos=(350-i*(10+j))*sin(theta_eyelast)+650; ypos=(350-i*(10+j))*cos(theta_eyelast)+ height/3-200;
            
            if(xpos<550)
            text(displayString.charAt(PApplet.parseInt(random(0,displayString.length()))), xpos , ypos);
            //println(xpos);println("\n"+ypos);
          }
//      text(displayString.charAt(int(random(0,displayString.length()))), (350-i*15)*sin(theta_eyelast)+650 , (350-i*10)*cos(theta_eyelast)+ height/3);
//      text(displayString.charAt(int(random(0,displayString.length()))), (350-i*12)*sin(theta_eyelast)+650 , (350-i*10)*cos(theta_eyelast)+ height/3);
      
      theta_eyelast-=0.03f;  
      }
      flag=!flag;
   
   
////////////// Drawing the Legs   
   
theta=0;   


for(int radius=4;radius<100;radius++)
{
 
  for(theta=0;theta<=PI;theta+=0.05f)
  {
     
    textSize(radius/8);
    xpos=radius*cos(theta);
    ypos=radius*sin(theta);
   //text(displayString.charAt(int(random(0,displayString.length()))), xpos+1275 , 800+100+ypos);

  }
}
    
    
    
///// Legs ...

//   for(int k=0;k<100;k+=10)
//    text(displayString.charAt(int(random(0,displayString.length()))), +1225  , 920+k);

   //line(195,990,330,990); 
   
   float curvature=95;
   
   textSize(8.8f);  
   for(float temp=0;temp<12;temp+=5)
 {
   for(theta=PI/2;theta>=PI/6;theta-=0.08f)
  { 
    xpos=(curvature-temp)*cos(theta);
    ypos=(curvature-temp)*sin(-theta);
//    text(displayString.charAt(int(random(0,displayString.length()))), -xpos+1225, 1110+ypos);

    xpos=(curvature+2*temp)*cos(theta);
//    text(displayString.charAt(int(random(0,displayString.length()))), xpos+1225, 1110+ypos);
    
    
//    curvature-=1.25;
    
//    xpos=(curvature)*cos(theta);
//    ypos=(curvature)*sin(theta);
//   text(displayString.charAt(int(random(0,displayString.length()))), -ypos+1205, 1110+xpos);
//   
  }
  
    
    for(int l=0;l<10;l++)
    {
       text(displayString.charAt(PApplet.parseInt(random(0,displayString.length()))), 1125-10*l, 950);
       text(displayString.charAt(PApplet.parseInt(random(0,displayString.length()))), 1125-1.5f*l, 950-10*l);
       text(displayString.charAt(PApplet.parseInt(random(0,displayString.length()))), 935+15*l, 950-10*l); 
    }
  
  
    for(int l=0;l<10;l++)
    {
     text(displayString.charAt(PApplet.parseInt(random(0,displayString.length()))), 1575-10*l, 950);
     text(displayString.charAt(PApplet.parseInt(random(0,displayString.length()))), 1575-1.5f*l, 950-10*l);
     text(displayString.charAt(PApplet.parseInt(random(0,displayString.length()))), 1385+15*l, 950-10*l); 
    }
    
    
    
    
     //line(x+1300,y+height/2,2000,200);
    //line(xpos+1205, 1110+ypos,2000,2000);
  
  

 }
      

}


public void draw() {
  println("passed");
  ;
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#F0F0F0", "Spiral" });
  }
}
