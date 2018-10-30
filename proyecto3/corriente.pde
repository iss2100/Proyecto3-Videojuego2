interface arte{
   void display(int x,int y,float s);
}

class Artista implements arte{
  String nombre;
  int ataque;
  int vida;
  
  Artista(String nombre_,int ataque_,int vida_){
    nombre=nombre_;
    ataque=ataque_;
    vida=vida_;
    
  }
  
     
  void display(int x,int y,float s){
    
    pushMatrix();
    translate(x,y);
    scale(s);
  
    switch(nombre){
   case "puntillismo":
   Seurat ();
   break;
   
  case "neoplasticismo":
  Mondrian ();
  break;
  
  case "impresionismo":
  Vangogh ();
  break;
  
  case "expresionismo":
  Kandinsky();
  break;
  
  case "progresivo":
  Tool();
  break;
   }
   popMatrix();
}
}
