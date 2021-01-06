class BotonImagenFondo {
  
 // Propiedades
 float x, y, w, h, a, b;  // Posición y dimensiones
 boolean enabled; 
 PImage ImagenBoton; 

//construcción
 BotonImagenFondo(PImage ImagenBoton, float x, float y, float w, float h, float a, float b){
   this.ImagenBoton = ImagenBoton;
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.a = a;
   this.b = b;
   this.enabled = true;
 }
 
 //activación
 void setEnabled(boolean b){
   this.enabled = b;
 }
 
 //dibujo   bifIconoAnadir = new BotonImagenFondo (imgIconoAnadir, AnadirItemX + (AnadirItemW/2), AnadirItemY + (AnadirItemH/2),30, 30, AnadirItemW, AnadirItemH);

 void display(){
     pushStyle ();
     fill (255,255,255); noStroke();
     rect (this.x - (this.a/2), this.y - (this.b/2), this.a, this.b, 8);
     imageMode(CENTER);
     image(ImagenBoton, this.x, this.y, this.w, this.h);
     popStyle();
}

 boolean mouseOverButton(){
   return (mouseX >= this.x) && 
          (mouseX<=this.x + this.w) && 
          (mouseY>= this.y) && 
          (mouseY<= this.y + this.h); 
 }
}
