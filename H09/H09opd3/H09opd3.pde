int mijngetal;

void setup(){
  
println(mijncijfer(80,90));
mijngetal=mijncijfer(50,40);
println(mijngetal);
}

void draw(){
}

int mijncijfer(int cijfer1, int cijfer2){
  int antwoord;
  antwoord=(cijfer1+cijfer2)/2;
  return antwoord;
}
