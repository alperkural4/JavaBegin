
void setup(){
  size(500,500);
}

void draw(){
  background(255,255,255);
  stroke(0,0,0);
  tekenDriehoek(150,300,150,150,200,200);
}
void tekenDriehoek(int x1, int y1, int x2, int y2, int x3, int y3){
    // teken een driehoek m.b.v. de meegegeven data (parameters)
   line(x1,y1,x1+x1,y1);
   line(x2,y2+y2,x2+x2,y2);
   line(x3+x3,y3+y3,x3,y3);
 }
   
