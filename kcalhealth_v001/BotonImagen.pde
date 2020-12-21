class BotonImagen {
  
 // Propiedades
 float x, y, w, h;  // Posición y dimensiones
 PImage img;  // Imagen 
 boolean enabled; 
PImage ImagenBoton; 

//construcción
 BotonImagen(PImage ImagenBoton, float x, float y, float w, float h){
   this.img = ImagenBoton;
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.enabled = true;
 }
 
 //activación
 
 //dibujo
 void display(){
   
   if (enabled){
     imageMode(CORNER);
     image(img, this.x, this.y, this.w, this.h);
   }
}
}
