String zin;
void setup(){
  zin=langezin("hallo","ik heb legendary loot gekregen","wat voor loot","hebben jullie gekregen");
  println(zin);
}

void draw(){
}

String langezin(String a, String b, String c, String d){
  String antwoord;
  antwoord=(a+" "+b+" "+c+" "+d);
  return antwoord;
}
