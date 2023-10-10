size(500,500);
background(255,255,255);
int tafel=7;
int antwoord;


for(int i=1; i<=10; i++){
 antwoord = tafel * i;
 println(antwoord);
 fill(0,0,0);
 text(i + "X" + tafel+" " + "="+" " + antwoord, i * 0 + 90, i* 30 + 90);
}
