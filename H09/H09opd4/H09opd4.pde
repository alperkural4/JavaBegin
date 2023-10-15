void setup(){
  size(500,500);
}
 void draw(){
   background(255,255,255);
   //rect(100,100,100,100);
   stroke(0,0,0);
   blok(150,150,200,200);
 }
 
 void blok(int x, int y,int w,int h){
   //bovenlijn
   line(x,y,x+w,y);
   //onderlijn
   line(x,y+h,x+w,y+h);
   //linkerlijn
   line(x,y,x,y+h);
   //rechterlijn
   line(x+w,y,x+h,y+h);
 }
