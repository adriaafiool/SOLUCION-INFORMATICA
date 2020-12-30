class BotonImagen {
  
 // Propiedades
 float x, y, w, h;  // Posición y dimensiones
 boolean enabled; 
 PImage ImagenBoton; 

//construcción
 BotonImagen(PImage ImagenBoton, float x, float y, float w, float h){
   this.ImagenBoton = ImagenBoton;
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.enabled = true;
 }
 
 //activación
 void setEnabled(boolean b){
   this.enabled = b;
 }
 
 //dibujo
 void display(){
   
     imageMode(CENTER);
     image(ImagenBoton, this.x, this.y, this.w, this.h);
   
}

 boolean mouseOverButton(){
   return (mouseX >= this.x - (this.w/2)) && 
          (mouseX<=this.x + (this.w/2)) && 
          (mouseY>= this.y - (this.h/2)) && 
          (mouseY<= this.y + (this.h/2)); 
 }
}
