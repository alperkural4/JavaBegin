size(500,500);
background(255,255,255);

int cirkel =90;

for(int i = 0; i < 5; i++){
  ellipse(250 - cirkel/2, 250 , cirkel,cirkel);
  cirkel-=20;
}
