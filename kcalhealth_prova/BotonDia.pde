class DayButton {
  
  // Dimensions del botó
  float x, y, w, h;
  
  // Data representativa
  int dia, mes, any;
  
  // Estats del botó
  boolean selected, enabled;
  
  // Constructor
  DayButton(float x, float y, float w, float h, int d, int m, int a){
    this.x = x; this.y=y; this.w = w; this.h = h;
    this.dia = d; this.mes = m; this.any = a;
    this.selected = false;
    this.enabled = true;
  }
  
  // Setters
  
  void setEnabled(boolean b){
    this.enabled = b;
  }
  
  void setSelected(boolean b){
    this.selected = b;
  }
  
  
  // Dibuixa el botó
  void display(){
    pushStyle();
    if(enabled){
      fill(236, 237, 239); 
    }
    else{
      fill(198, 200, 207); 
    }
    noStroke();
    rect(x, y, w, h, 5);
    if(selected){
      fill(255, 133, 133); noStroke();
      rect(x, y, w, h, 5);
    }
    textAlign(CENTER); textFont(fuente2); textSize(15); fill (105, 109, 125);
    text(dia, x + w/2, y + h/2 + 10);
    popStyle();
  }
  
  // Ratolí sobre el botó
  boolean mouseOver(){
    return mouseX>=this.x && mouseX<=this.x+this.w &&
           mouseY>=this.y && mouseY<=this.y+this.h;
  }
  
  
}
