// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 13-5: Polar to Cartesian

// Polar coordinates (r, theta) are converted to Cartesian (x,y) 
// for use in the ellipse() function.

float r = 0, r2=2, x, y; 
float theta = 0, theta2=510.029, xpos, ypos;
boolean flag=false;
String displayString="KIWI";
String displayString2="NEWZEA";

int charactercount=0,charactercount2=0;

void setup() {
  
  
 size(9600 , 6600);
  background(0);
  smooth();


  // Draw an ellipse at x,y
  noStroke();
  fill(255);

  textAlign(CENTER);

  //point(x+width/2,y + height/2);

  float x_eyelast=0, y_eyelast=0, theta_eyelast=0;

  println("passed");

  while (r<2000)
  {
    // Polar to Cartesian conversion
    x = r * cos(theta2+10);
    y = r * sin(theta2+10);

    //ellipse(x + width/2, y + height/2, 5, 5); // Adjust for center of window
    textSize((5+r/75));

    text(displayString.charAt((charactercount++)%4), x + 0.65*width, y + height/2-200);
    //text(displayString.charAt(int(random(0,displayString.length()))), r *  sin(theta)  + 1300 , r* cos(theta) + height/2);

    if (r2<1000)

    {
      x = r2 *  sin(theta2);
      y = r2 * cos(theta2);
      textSize(4+r/50);
//      textSize(4+r/75);
//      
      if(r2<1000.35)
      text(displayString.charAt((charactercount2++)%4), x + width/3+250, y + height/3-200);

      x_eyelast=x;
      y_eyelast=y;
      theta_eyelast=theta;
      //text(displayString.charAt(int(random(0,displayString.length()))), -(r2) *  cos(theta) + 650 , -(r2)* sin(theta) + height/3);
    }


    // Increment the angle
    theta += 0.029;
    theta2-=0.06;

    //    if(r<520.5)
    r+=0.06;
    //else r+=5;

    if (r2 <1000.35)
      r2+=0.06;
    else r2+=10;
  }


  stroke(0);

  println("passed2");
  // Drawing the Beak     


//line(x_eyelast+650,y_eyelast-200+ height/3,650,height/3-200);
  textSize(8.8);
  int i;


////////////// OLD Beak ...


//line( (50)*sin(theta_eyelast)+650 ,50*cos(theta_eyelast)+ height/3-200,x_eyelast-300+650,y_eyelast+300+ height/3-200);

//  for (i=0;i<15;i++)
//  {  
//    for (int j=2;j<10;j+=2)
//    {
//      xpos=(350-i*(10+j))*sin(theta_eyelast)+650; 
//      ypos=(350-i*(10+j))*cos(theta_eyelast)+ height/3-200;
//
//      if (xpos<550)
//        text(displayString.charAt(int(random(0, displayString.length()))), xpos, ypos);
//      //println(xpos);println("\n"+ypos);
//    }
//    //      text(displayString.charAt(int(random(0,displayString.length()))), (350-i*15)*sin(theta_eyelast)+650 , (350-i*10)*cos(theta_eyelast)+ height/3);
//    //      text(displayString.charAt(int(random(0,displayString.length()))), (350-i*12)*sin(theta_eyelast)+650 , (350-i*10)*cos(theta_eyelast)+ height/3);
//
//    theta_eyelast-=0.03;
//  }
//  flag=!flag;




  ////////////// Drawing the Legs   

  theta=0;   


  for (int radius=4;radius<100;radius++)
  {

    for (theta=0;theta<=PI;theta+=0.05)
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

  textSize(8.8);  
  for (float temp=0;temp<12;temp+=5)
  {
    for (theta=PI/2;theta>=PI/6;theta-=0.08)
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


    textSize(8);

//    
//      for (int l=0;l<10;l++)
//  {
//        
//                
//        text("W", 1125-20*l, 1000);
//  
//        text("W", 1125-1.5*l, 1000-10*l);
//  
//        text("W", 935+15*l, 1000-10*l);
//      
//    
//  }


//    for (int l=0;l<10;l++)
//    {
//      text(displayString.charAt(int(random(0, displayString.length()))), 1555-10*l, 1000);
//      text(displayString.charAt(int(random(0, displayString.length()))), 1555-1.5*l, 1000-10*l);
//      text(displayString.charAt(int(random(0, displayString.length()))), 1375+15*l, 1000-10*l);
//    }




    //line(x+1300,y+height/2,2000,200);
    //line(xpos+1205, 1110+ypos,2000,2000);
  }

{
  
  
 
  float x0=0,y0=0,x1=1,x2=0,x3=-2,y1=0,y2=-1,y3=0;
  

  
  float k,l,c,m;
  
  textSize(5);
  
  
  int j=1125;

resetMatrix();


translate(0.65*width-646.6,2000+ height/2+25);

  for( i=6;i<40;i++)
  {
//    
//  if(i==0)
//  line(x0,y0,x1,y1);
//  else line(x3-2*i,y3+i,x1+i,y1+i);
//  
//// Adding Text ....

textSize((18*i)/40);

  for(k=x3-10;k<x1;k+=0.75*i)
    text(displayString.charAt((charactercount++)%4),k,y3);

  for(k=x2;k<x1;k+=i/2)
    {
      m=(y2-y1)/(x2-x1);
      c=y2-m*x2;
      text(displayString.charAt((charactercount++)%4),k,m*k+c);
    }
  
  
  for(k=(x3-10);k<x2;k+=i/2)
    {
      m=(y3-y2)/((x3-10)-x2);
      c=y2-m*x2;
      text(displayString.charAt((charactercount++)%4),k,m*k+c);
    }
    
    
//
//  line(x1,y1,x2,y2);
//  line(x2,y2,x3-2*i,y3+i);
//  
  
  x1+=10;y1+=10;
  y2-=10;
  x3-=20;y3+=10;

}

j+=430;
}

{
  
  
 
  float x0=0,y0=0,x1=1,x2=0,x3=-2,y1=0,y2=-1,y3=0;
  

  
  float k,l,c,m;
  
  textSize(5);
  
  
  int j=1475;

resetMatrix();


translate(0.65*width+785.6,2000+ height/2+10);
  for( i=6;i<42;i++)
  {
//    
//  if(i==0)
//  line(x0,y0,x1,y1);
//  else line(x3-2*i,y3+i,x1+i,y1+i);
//  
//// Adding Text ....

textSize((18*i)/40);

  for(k=x3-10;k<x1;k+=0.75*i)
    text(displayString.charAt((charactercount++)%4),k,y3);

  for(k=x2;k<x1;k+=i/2)
    {
      m=(y2-y1)/(x2-x1);
      c=y2-m*x2;
      text(displayString.charAt((charactercount++)%4),k,m*k+c);
    }
  
  
  for(k=(x3-10);k<x2;k+=i/2)
    {
      m=(y3-y2)/((x3-10)-x2);
      c=y2-m*x2;
      text(displayString.charAt((charactercount++)%4),k,m*k+c);
    }
    
    
//
//  line(x1,y1,x2,y2);
//  line(x2,y2,x3-2*i,y3+i);
//  
  
  x1+=10;y1+=10;
  y2-=10;
  x3-=20;y3+=10;

}
//for(i=0;i<5;i++)
//text(displayString.charAt((charactercount++)%4),0,y2-10*i);


j+=430;
}

resetMatrix();

  float x0=0, y0=0, x1=1, x2=0, x3=-2, y1=0, y2=-1, y3=0;

  translate( width/3-x_eyelast-170+235,  height/3+100);

  float k, l, c, m;

//  textSize(5);
  for ( i=20;i<70;i++)
  {
    
    textSize(5+i/20);
    //    
    //  if(i==0)
    //  line(x0,y0,x1,y1);
    //  else line(x3-2*i,y3+i,x1+i,y1+i);
    //  
    //// Adding Text ....

    for (k=x3-20;k<x1;k+=10)
    { 
      m=(y3-y1)/((x3-20)-x1);
      c=y1-m*x1;
      text(displayString.charAt((charactercount++)%4), k, m*k+c);
      ;
      //text("T",k,y3);
    }
    for (k=x2;k<x1;k+=10)
    {
      m=(y2-y1)/(x2-x1);
      c=y2-m*x2;
      text(displayString.charAt((charactercount++)%4), k, m*k+c);
    }


    for (k=(x3-20);k<x2;k+=10)
    {
      m=(y3-y2)/((x3-20)-x2);
      c=y2-m*x2;
      text(displayString.charAt((charactercount++)%4), k, m*k+c);
    }


    //
    //  line(x1,y1,x2,y2);
    //  line(x2,y2,x3-2*i,y3+i);
    //  

    x1+=5;
    y1+=5;
    y2-=5;
    x3-=40;
    y3+=20;
    
    
  }

save("kiwi.tiff");
exit();

   
}








void draw() {

  ;
}

