class Boton {
  
  //propiedades
 float x, y, w, h;
 color fillColor;
 String textBoton;
 boolean enabled;
 int a,b,c;
 
 Boton(String text, float x, float y, float w, float h, int a, int b, int c){
   this.textBoton = text;
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;   
   this.enabled = true;
   fillColor = color(a,b,c);
   noStroke();
 }
 
 void setEnabled (boolean b){
   this.enabled = b;
 }
 
void display (){
  pushStyle();
  fill (fillColor);noStroke();
  rect(this.x, this.y, this.w, this.h, 10);
   
  fill(0); textAlign(CENTER); textSize(20); textFont(fuente1);
  text(textBoton, this.x + this.w/2, this.y + this.h/2 + 10);
  popStyle();
}
 }
 
