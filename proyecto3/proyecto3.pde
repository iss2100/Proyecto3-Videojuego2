import processing.sound.*;
SoundFile soundfile;


PFont fuente;


Artista Seurat;
Artista Mondrian;
Artista Vangogh;
Artista Kandinsky;
Artista Tool;

int ataque1;
int ataque2;

int vida1;
int vida2;

String nombre1, nombre2;

int pantalla;
int turno;

boolean jugador1x;
boolean jugador2x;

pantalla titulo;
pantalla seleccion;
pantalla pelea;
pantalla ganador;

Artista jugador1;
Artista jugador2;

Artista Seurat1;
Artista Mondrian2;
Artista Vangogh3;
Artista Kandinsky4;
Artista Tool5;




PImage kandinsky,mondrian,puntillismo,vangogh,progresivo,louvre1,louvre2,louvre3,louvre4;

BotonColor dos;



void setup(){
  size (800,550);
  
  dos = new BotonColor(400,400,35);

 soundfile = new SoundFile(this, "Pantera.mp3");
  soundfile.loop();

  
  
  pantalla=0;
  turno=0;
  
    louvre1= loadImage("louvre1.jpg");
   louvre2= loadImage("louvre2.jpg");
   louvre3= loadImage("louvre3.jpg");
  louvre4= loadImage("louvre4.JPG");
  
  Seurat = new Artista("puntillismo",6,16);
  Mondrian = new Artista("neoplasticismo",4,16);
  Vangogh = new Artista("impresionismo",4,10);
  Kandinsky = new Artista("expresionismo",2,12);
 Tool = new Artista("progresivo",2,14);
  
  Seurat1 = new Artista("puntillismo",6,16);
  Mondrian2 = new Artista("neoplasticismo",4,16);
  Vangogh3 = new Artista("impresionismo",4,10);
  Kandinsky4 = new Artista("expresionismo",2,12);
 Tool5 = new Artista("progresivo",2,14);
  
  jugador1= new  Artista(nombre1,vida1,ataque1);
  jugador2= new  Artista(nombre2,vida2,ataque2);
  
  titulo=new pantalla("titulo");
  seleccion=new pantalla("seleccion");
  pelea=new pantalla("pelea");
  ganador=new pantalla("ganador");
  
  fuente = createFont("Times New Roman",30);
  textFont(fuente);
  smooth();
  
  
  
  
}
  void draw(){
  pantalla();
}




  void Seurat(){
    puntillismo=loadImage("puntillismo.jpg");
    puntillismo.resize(150,150);
image(puntillismo,50,50);
  }

void Mondrian(){
    mondrian=loadImage("mondrian.jpg");
    mondrian.resize(150,150);
image(mondrian,300,50);
  }
  
  void Vangogh(){
    vangogh=loadImage("vangogh.jpg");
    vangogh.resize(150,150);
image(vangogh,550,50);
  }
  
  void Kandinsky(){
      kandinsky=loadImage("kandinsky.jpg");
    kandinsky.resize(150,150);
image(kandinsky,150,250);
  }
  
      
    void Tool(){
      progresivo=loadImage("progresivo.jpg");
    progresivo.resize(150,150);
image(progresivo,450,250);
    }
      
//pantalla titulo

 

void titulo() {
  
   //soundfile.play();
  
  louvre1.resize(800,550);
image(louvre1,0,0);

 
  //background(#6FEBF5);
  fill(255);
  textSize(50);
  textAlign(CENTER,CENTER);
  text("Batalla en el Louvre", 400, 50);
  textSize(20);
  text("La batalla de las vanguardias",380,100);
  text("presiona esc para salir",100,500);
    text("iniciar",400,450);
  
   dos.display();
   dos.funcion();


  
  

  boolean over = false;
  boolean press = false;
     if(dist(400,400,mouseX,mouseY)<50){
      if (mousePressed){
        press = true;
        over = true;
          
      pantalla=1;
      }
}
}
     

   


//pantalla de seleccion

void seleccion() {
  
  louvre2.resize(800,550);
image(louvre2,0,0);
  //background(#6FEBF5);

  if (jugador1x&&jugador2x) {
    pantalla+=1;

    turno+=1;
  }

  Seurat.display(5, 70, 0.70);
  Seurat1.display(5, 300, 0.70);
  Mondrian.display(-25, 70, 0.70);
  Mondrian2.display(-25, 300, 0.70);
 Vangogh.display(-60, 70, 0.70);
 Vangogh3.display(-60, 300, 0.70);
  Kandinsky.display(370, -70, 0.70);
  Kandinsky4.display(370, 160, 0.70);
  Tool.display(320, -70, 0.70);
 Tool5.display(320, 160, 0.70);


  fill(0,0,255);
  textSize(14);
  text("ataque:", 25, 270);
  text("vida:", 27, 285);
 
  
 
  text("4", 80, 270);
  text("6", 235, 270);
   text("8",380, 270);
  text("6", 530, 270);
  text("8", 690, 270);
  
  text("16", 80, 285);
  text("14", 235, 285);
   text("10",380, 285);
  text("18", 530, 285);
  text("14", 690, 285);
  
    fill(255,0,0);
   text("ataque:", 25, 515);
  text("vida:", 27, 530);
  
  text("4", 80, 515);
  text("6", 235, 515);
   text("8",380, 515);
  text("6", 530, 515);
  text("8", 690, 515);
  
  text("16", 80, 530);
  text("14", 235, 530);
   text("10",380, 530);
  text("18",530,530);
  text("14", 690, 530);

fill(255);

  textSize(25);
  textAlign(CENTER, CENTER);
  text("Presiona la letra de la vanguardia con la que quieres pelear", 400, 30);
  
  textSize(20);
  fill(0,0,255);
  text("puntillismo",90,245);
  text("neoplasticismo",238,245);
  text("postimpresionismo",380,245);
  text("expresionismo",530,245);
  text("hiperprogresivo",690,245);
  textSize(20);
  fill(255,0,0);
  text("puntillismo",90,480);
  text("neoplasticismo",238,480);
  text("postimpresionismo",380,480);
  text("expresionismo",530,480);
  text("hiperprogresivo",690,480);
  

 textSize(20);
  fill(0,0,255);
  text("Jugador 1", 65, 80);
  text("q", 85, 215);
  text("w", 235, 215);
  text("e", 375, 215);
  text("a", 520, 215);
  text("d", 690, 215);
  
  fill(255,0,0);
  text("Jugador 2", 65, 310);
  textSize(25);
  text("p", 80, 450);
  text("o", 235, 450);
  text("i", 375, 450);
  text("ñ", 520, 450);
  text("k", 690, 450);


  keyPressed();
  switch(key) {

  case 'q' :
    jugador1 = Seurat;
    nombre1=Seurat.nombre;
    vida1 = jugador1.vida=16;
    ataque1 = jugador1.ataque=4;
    jugador1x = true;

   
        noFill ();
        rect (18, 90, 150, 155); 
    break;
    
case 'Q' :
    jugador1 = Seurat;
    nombre1=Seurat.nombre;
    vida1 = jugador1.vida=16;
    ataque1 = jugador1.ataque=4;
    jugador1x = true;

   
        noFill ();
        rect (18, 90, 150, 155); 
    break;

  case 'w' :
    jugador1 = Mondrian;
    nombre1=Mondrian.nombre;
    vida1 = jugador1.vida=14;
    ataque1 = jugador1.ataque=6;
    jugador1x = true;
    
        noFill ();
        rect (162, 90, 150, 155);

    

    break;
    
case 'W' :
    jugador1 = Mondrian;
    nombre1=Mondrian.nombre;
    vida1 = jugador1.vida=14;
    ataque1 = jugador1.ataque=6;
    jugador1x = true;
    
        noFill ();
        rect (162, 90, 150, 155);

    

    break;

  case 'e' :
    jugador1 = Vangogh;
    nombre1= Vangogh.nombre;
    vida1 = jugador1.vida=10;
    ataque1 = jugador1.ataque=8;
    jugador1x = true;

        noFill ();
        rect (309, 90, 150, 155);

    break;
    
case 'E' :
    jugador1 = Vangogh;
    nombre1= Vangogh.nombre;
    vida1 = jugador1.vida=10;
    ataque1 = jugador1.ataque=8;
    jugador1x = true;

        noFill ();
        rect (309, 90, 150, 155);

    break;

  case 'a' :
    jugador1 = Kandinsky;
    nombre1= Kandinsky.nombre;
    vida1 = jugador1.vida=18;
    ataque1 = jugador1.ataque=2;
    jugador1x = true;

        noFill ();
        rect (452, 90, 150, 155);

    break;
    
     case 'A' :
    jugador1 = Kandinsky;
    nombre1= Kandinsky.nombre;
    vida1 = jugador1.vida=18;
    ataque1 = jugador1.ataque=2;
    jugador1x = true;

        noFill ();
        rect (452, 90, 150, 155);

    break;

  case 'd' :
    jugador1 = Tool;
    nombre1= Tool.nombre;
    vida1 = jugador1.vida=14;
    ataque1 = jugador1.ataque=8;
    jugador1x = true;

         noFill ();
         rect (609, 90, 150, 155);

    break;


case 'D' :
    jugador1 = Tool;
    nombre1= Tool.nombre;
    vida1 = jugador1.vida=14;
    ataque1 = jugador1.ataque=8;
    jugador1x = true;

         noFill ();
         rect (609, 90, 150, 155);

    break;
    
    
  case 'p' :
    jugador2 = Seurat1;
    nombre2 = Seurat1.nombre;
    vida2 = jugador2.vida=16;
    ataque2 = jugador2.ataque=4;
    jugador2x = true;
    
         noFill ();
         rect (18, 330, 150, 155);


    break;
    
case 'P' :
    jugador2 = Seurat1;
    nombre2 = Seurat1.nombre;
    vida2 = jugador2.vida=16;
    ataque2 = jugador2.ataque=4;
    jugador2x = true;
    
         noFill ();
         rect (18, 330, 150, 155);


    break;

  case 'o' :
    jugador2 = Mondrian2;
    nombre2 = Mondrian2.nombre;
    vida2 = jugador2.vida=14;
    ataque2 = jugador2.ataque=6;
    jugador2x = true;

         noFill ();
         rect (162, 330, 150, 155);

    break;

  case 'O' :
    jugador2 = Mondrian2;
    nombre2 = Mondrian2.nombre;
    vida2 = jugador2.vida=14;
    ataque2 = jugador2.ataque=6;
    jugador2x = true;

         noFill ();
         rect (162, 330, 150, 155);

    break;
  case 'i' :
    jugador2 = Vangogh3;
    nombre2 = Vangogh3.nombre;
    vida2 = jugador2.vida=10;
    ataque2 = jugador2.ataque=8;
    jugador2x = true;

         noFill ();
         rect (309, 330, 150, 155);

    break;
    
 case 'I' :
    jugador2 = Vangogh3;
    nombre2 = Vangogh3.nombre;
    vida2 = jugador2.vida=10;
    ataque2 = jugador2.ataque=8;
    jugador2x = true;

         noFill ();
         rect (309, 330, 150, 155);

    break;

  case 'ñ' :
    jugador2 = Kandinsky4;
    nombre2 = Kandinsky4.nombre;
    vida2 = jugador2.vida=18;
    ataque2 = jugador2.ataque=2;
    jugador2x = true;

         noFill ();
         rect (452, 330, 150, 155);

    break;
    
case 'Ñ' :
    jugador2 = Kandinsky4;
    nombre2 = Kandinsky4.nombre;
    vida2 = jugador2.vida=18;
    ataque2 = jugador2.ataque=2;
    jugador2x = true;

         noFill ();
         rect (452, 330, 150, 155);

    break;


  case 'k' :
    jugador2 = Tool5;
    nombre2 = Tool5.nombre;
    vida2 = jugador2.vida=14;
    ataque2 = jugador2.ataque=8;
    jugador2x = true;

         noFill ();
         rect (609, 330, 150, 155);

    break;
    
case 'K' :
    jugador2 = Tool5;
    nombre2 = Tool5.nombre;
    vida2 = jugador2.vida=14;
    ataque2 = jugador2.ataque=8;
    jugador2x = true;

         noFill ();
         rect (609, 330, 150, 155);

    break;
  }
  
}
  
  
                                                   
  void pelea(){
    
    
  louvre4.resize(800,550);
image(louvre4,0,0);
    
   
   
   
    if(vida1 <=0 || vida2 <=0){
    pantalla=3;
    
    }
    
    if (turno == 1)
  {
    fill (0,0,255);
    textSize (20);
    textAlign (CENTER, CENTER);
    text ("Jugador 1, presione la tecla q", 50, -35, 300, 300);
  }
  
  if (turno == 2)
  {
    fill (255,0,0);
    textSize (20);
    textAlign (CENTER, CENTER);
    text ("Jugador 2, presione la tecla p", 460, -35, 300, 300);
  }
    
  switch(turno){
    case 1:
    
       keyPressed();   
    if(key =='q'){
      fill(0,255,0);
      text("turno del jugador 2",100,600);
      fill(255);
      vida2-=jugador1.ataque;
      turno=2;
    }
    break;
    case 2:
    keyPressed();
    if(key =='p'){
      text("turno del jugador 1",400,600);
      vida1-=jugador2.ataque;
      turno=1;
    }
    break;
    
  }
  fill (random(255),random(255),random(255));
  
  
  rect (100, 420, vida1*20, 10, 7);
  rect (450, 420, vida2*20, 10, 7);
  
  
  if(jugador1.nombre=="puntillismo"){
    jugador1.display(120,150,1);
    
  }
  if(jugador1.nombre=="neoplasticismo"){
    jugador1.display(-130,150,1);
  }
  
  if(jugador1.nombre=="impresionismo"){
    jugador1.display(-380,150,1);
  }
  
 if(jugador1.nombre=="expresionismo"){
    jugador1.display(18,-50,1);
  }
  
  if(jugador1.nombre=="progresivo"){
    jugador1.display(-280,-50,1);
  }
  
    if(jugador2.nombre=="puntillismo"){
    jugador2.display(430,150,1);
  }
  
  if(jugador2.nombre=="neoplasticismo"){
    jugador2.display(180,150,1);
  }
  
 if(jugador2.nombre=="impresionismo"){
    jugador2.display(-68,150,1);
  }
  
  if(jugador2.nombre=="expresionismo"){
    jugador2.display(330,-50,1);
  }
  
  if(jugador2.nombre=="progresivo"){
    jugador2.display(30,-50,1);
  }
    
 }  



void ganador() {

 
 louvre3.resize(800,550);
image(louvre3,0,0);

  
  fill(255,0,0);
  textSize(25);
  text("Ganador", 400,85);
   textSize(25);
  text("presiona z para jugar de nuevo o esc para salir",400,520);
  textSize(20);
  
  keyPressed();
  if(key == 'z'){
      pantalla=0;
      jugador1x=false;
      jugador2x=false;
      turno=0;
    }
   if(vida1<=0){
    
    switch(nombre2){
      case "puntillismo":
      jugador2.display(250,100,1.2);
      fill(255,0,0);
      text(" jugador 2: puntillismo",400,430);
      break;
      
      case "neoplasticismo":
      jugador2.display(-50,100,1.2);
       fill(255,0,0);
      text(" jugador 2: neoplasticismo",400,430);
      break;
      
      case "impresionismo":
              jugador2.display(450,100,1.2);
        fill(0);
      text(" jugador 2: postimpresionismo",400,430);
      break;
      
      case "expresionismo":
     jugador2.display(130,-140,1.2);
      fill(255,0,0);
      text(" jugador 2: expresiomismo",400,430);
      break;
      
      case "progresivo":
      jugador2.display(-230,-140,1.2);
       fill(255,0,0);
      text(" jugador 2: hiperprogresivo",400,430);
      break;
    
      
     }
    }
    
    if (vida2 <= 0)
  
    
    switch (nombre1)
    {
      case "puntillismo":
        jugador1.display(250,100,1.2);
         fill(0);
      text(" jugador 1: puntillismo",400,430);
      break;
      
      case "neoplasticismo":
         jugador1.display(-50,100,1.2);
        fill(0);
      text(" jugador 1: neoplasticismo",400,430);
      break;
     
      case "impresionismo":
        jugador1.display(-350,100,1.2);
        fill(0);
      text(" jugador 1: postimpresionismo",400,430);
      break;
      
      case "expresionismo":
        jugador1.display(130,-140,1.2);
        fill(0);
      text(" jugador 1: expresionismo",400,430);
      break;
      
      case "progresivo":
        jugador1.display(-230,-140,1.2);
        fill(0);
      text(" jugador 1: hiperprogresivo",400,430);
      break;
      
    }
    
  }


//pantalla ganador

void pantalla() {
  switch(pantalla) {
  case 0:
    titulo.display();
    break;
  case 1:
    seleccion.display();
    break;
  case 2:
    pelea.display();
    break;
  case 3:
    ganador.display();
    break;
  }
}
