PImage imgFondo, imgLogo, imgIconoAlimentacion, imgIconoHidratacion, imgIconoActividad, imgIconoPerfil;

PFont fuente1;

void cargarMedia (){
  cargarImagenes();
  cargarFuentes();
}

void cargarImagenes (){
  
  //imagenes MENUPRINCIPAL
  imgLogo = loadImage("../imagenes/logo2.jpg");
  imgIconoAlimentacion = loadImage("../imagenes/iconoalimentacion.jpg");
  imgIconoHidratacion = loadImage ("../imagenes/iconohidratacion.jpg");
  imgIconoActividad = loadImage ("../imagenes/iconoactividad.jpg");
  imgIconoPerfil = loadImage ("../imagenes/iconoperfil.jpg");
  
  //imagenes MENUALIMENTACION
  imgFondo = loadImage("../imagenes/fondo.jpg");
  }
  
void cargarFuentes (){
  fuente1 = createFont ("../TIPOGRAFIES/fuente1.otf", 25);
}
