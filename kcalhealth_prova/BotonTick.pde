// Component RadioButton

class BotonTick {
  
  // Propietats
  float x, y, r;
  
  // Colors
  color normalColor;
  color seleccionadoColor;
  
  boolean checked;
  
  // Constructor
  BotonTick(float x, float  y, float r){
    this.x = x;
    this.y = y;
    this.r = r;
    this.checked = false;
    this.normalColor = color(grisflojo);
    this.seleccionadoColor = color(grisfuerte);
  }
  
  
  // Dibuixa el CheckBox
  void display(){ 
    if(this.checked){
      pushStyle();
      fill(seleccionadoColor); noStroke();
      ellipse(x, y, r, r);
         popStyle();
    }
    else{
      pushStyle();
      noStroke(); fill(normalColor);
      ellipse(x, y, r, r);
      popStyle();
    }
  }
  
  void setChecked(boolean b){
    this.checked = b;
  }
  
  // Canvia l'estat de selecció
  void toggle(){
    this.checked = ! this.checked;
  }
  
  
  // Mira si el ratolí està sobre el checkbox
  boolean onMouseOver(){
    return  dist(mouseX, mouseY, this.x, this.y) < this.r;
  }
  
}
