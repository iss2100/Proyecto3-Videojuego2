class pantalla implements juego{
  String nombre;
  
  pantalla(String nombre_){
    nombre=nombre_;
  }
  void display(){
    
    switch(pantalla){
      case 0:
      titulo();
      break;
      case 1:
      seleccion();
      break;
      case 2:
      pelea();
      break;
      case 3:
      ganador();
      break;
    }
  }
}
