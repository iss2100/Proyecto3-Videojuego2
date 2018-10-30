class Boton{
  float x,y;
  float r;
  boolean over = false;
  boolean press = false;
  
  Boton(float x_, float y_, float r_){
    this.x = x_;
    this.y = y_;
    this.r = r_;
  }
  
  void display(){
    ellipse(this.x,this.y,this.r*2,this.r*2);
  }
  
  void funcion(){
    if(dist(this.x,this.y,mouseX,mouseY)<this.r){
      if (mousePressed){
        press = true;
        over = false;
      }
      else{
        over = true;
        press = false;
      }
    }
    else{
      over = false;
      press = false;
    }
  }
}

class BotonColor extends Boton{
  color normal = color(255,0,0);
  color enOver = color(0,255,0);
 


  BotonColor(float x_,float y_, float r_){
    super(x_, y_, r_);
  }
  
  void display(){
    if (press){
      
    }
    else if (over){
      fill(enOver);
    }
    else{
      fill(normal);
    }
    super.display();
  }  
}
