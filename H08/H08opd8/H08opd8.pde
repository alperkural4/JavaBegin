int antwoord=0;
int cijfer1=0;
int cijfer2=1;

for (int i=0; i<10; i++){
   println(antwoord+cijfer1+cijfer2);
  antwoord = cijfer1 + cijfer2;
  cijfer1=cijfer2;
  cijfer2=antwoord;
}
  
