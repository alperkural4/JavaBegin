size(500,500);
background(255,255,255);

int xWaarde = 225;
int yWaarde = 200;

for(int i = 0; i < 5; i++){
  for(int j=0; j<1; j++){
    rect(xWaarde, yWaarde, 20,20);
  yWaarde += 20;
}
  xWaarde+=20;
}
