import controlP5.*;

String[] namen= new String[10];
int stuurnaam;
ControlP5 cp;
Textfield TF1;
Button knop1;

void setup(){
  size(500,500);
  
  cp=new ControlP5(this);
  TF1=cp.addTextfield("TextField1").setText("typ iets").setSize(180,50).setPosition(150,200).setCaptionLabel("");
  knop1=cp.addButton("Knop1").setCaptionLabel("drukopmij").setPosition(200,300);
}

void draw(){
}

void Knop1(){
  namen[stuurnaam]=TF1.getText();
  stuurnaam++;
  
  
  if(stuurnaam==namen.length){
  
  
     for(int i=0; i< namen.length; i++){
        text(namen[i],250,20+(10*i));
     }
     
   }
  }   



 
