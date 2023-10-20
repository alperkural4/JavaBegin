boolean gevonden= false;
String zoekmal="Jan";
String[] namen = {"Jan", "Peter", "Tomas", "Pan", "Sahbi"};

void setup(){
  gevonden = false;
  for(int i = 0; i < namen.length; i++){
    if (namen[i] == zoekmal){
    gevonden = true;
    }
  }

  
  if(gevonden){
  println(zoekmal+" "+"bestaat");
  }
}
