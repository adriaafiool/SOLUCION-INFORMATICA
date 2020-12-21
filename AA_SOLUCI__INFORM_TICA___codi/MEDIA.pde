PImage imgFondo, imgLogo, imgIconoAlimentacion, imgIconoHidratacion;

PFont fuente1;

void cargarMedia (){
  cargarImagenes();
  cargarFuentes();
}

void cargarImagenes (){
  
  //imagenes MENUPRINCIPAL
  imgLogo = loadImage("../logo2.jpg");
  imgIconoAlimentacion = loadImage("../iconoalimentacion.jpg");
  imgIconoHidratacion = loadImage ("../7053.jpg");
  
  //imagenes MENUALIMENTACION
  imgFondo = loadImage("../fondo.jpg");
  }
  
void cargarFuentes (){
  fuente1 = createFont ("../TIPOGRAFIES/fuente1.otf", 25);
}
