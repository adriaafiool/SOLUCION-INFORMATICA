  class Boton {
  
  //propiedades
 float x, y, w, h, s;
 color fillColor, fillColorSeleccionado;
 String textBoton;
 boolean enabled;
 int a,b,c;
 
 Boton(String text, float x, float y, float w, float h, float s//, int a, int b, int c
 ){
   this.textBoton = text;
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h; 
   this.s = s;
   this.enabled = true;
   fillColorSeleccionado = color(198, 200, 207);
   fillColor = color (236, 237, 239);
   //noStroke();
 }
 
 void setEnabled (boolean b){
   this.enabled = b;
 }
 
void display (){
  pushStyle();;  noStroke(); 
  if (!enabled) {
    fill(fillColorSeleccionado); 
  }
  else {
     fill (fillColor);
  }
  rect(this.x, this.y, this.w, this.h, 5);
   
  textAlign(CENTER); textFont(fuente2); textSize(s); fill (105, 109, 125);
  text(textBoton, this.x + this.w/2, this.y + this.h/2 + 4);
  popStyle();
}

boolean mouseOverButton(){
   return (mouseX >= this.x) && 
          (mouseX<=this.x + this.w) && 
          (mouseY>= this.y) && 
          (mouseY<= this.y + this.h); 
 }
  }
