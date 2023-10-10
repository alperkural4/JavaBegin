size(500,500);
background(255,255,255);

int xWaarde = 200;
int yWaarde = 25;

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
    rect(xWaarde, yWaarde, 25,25);
  yWaarde += 25;
}
yWaarde = 25;
xWaarde += 25;
}
