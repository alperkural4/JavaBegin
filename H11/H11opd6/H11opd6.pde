int zoekgetal=65;
int aantalgevonden=0;
boolean gevonden=false;
int getallen[]={12,54,32,76,32,23,32,65,65,85};

void setup(){
  for(int i=0; i < getallen.length; i++){
    if (getallen[i]==zoekgetal){
    gevonden = true;
    aantalgevonden++;
    }
    }
        if(gevonden){
    println(aantalgevonden);
  }
}
