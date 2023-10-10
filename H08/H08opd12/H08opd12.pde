size(500,500);
background(207, 169, 13);

int xWaarde = 80;
int yWaarde = 40;

for(int i = 0; i <= 8; i++){
  for(int j = 0; j <= 8; j++){
    
    rect(xWaarde, yWaarde, 40,40);
  yWaarde += 40;
  
  if((i+j) % 2 == 0)
{
  fill(0,0,0);
}
  else 
  {
    fill(255,255,255);
  }
  
}
yWaarde = 40;
xWaarde += 40;


}
