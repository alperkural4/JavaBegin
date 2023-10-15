void setup(){
size(500,500);
}
void draw(){
background(207, 0, 13);

int xWaarde = 70;
int yWaarde = 40;

for(int i = 0; i <= 8; i++){
  for(int j = 0; j <= 8; j++){
    
    rect(xWaarde, yWaarde, 40,20);
  yWaarde += 20;
  
  if((i+j) % 2 == 0)

  
  {
    fill(255,255,90);
  }
  
}
yWaarde = 40;
xWaarde += 40;


}
}
