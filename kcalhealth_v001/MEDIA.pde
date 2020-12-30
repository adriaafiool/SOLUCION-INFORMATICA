PImage imgFondo, imgLogo, imgIconoAlimentacion, imgIconoHidratacion, imgIconoActividad, imgIconoPerfil;

PFont fuente1;

void cargarMedia (){
  cargarImagenes();
  cargarFuentes();
}

void cargarImagenes (){
  
  //imagenes MENUPRINCIPAL
  imgLogo = loadImage("../imagenes/logo2.png");
  imgIconoAlimentacion = loadImage("../imagenes/iconoalimentacion.png");
  imgIconoHidratacion = loadImage ("../imagenes/iconohidratacion.png");
  imgIconoActividad = loadImage ("../imagenes/iconoactividad.png");
  imgIconoPerfil = loadImage ("../imagenes/iconoperfil.png");
  
  //imagenes MENUALIMENTACION
  imgFondo = loadImage("../imagenes/fondo.jpg");
  }
  
void cargarFuentes (){
  fuente1 = createFont ("../TIPOGRAFIES/fuente1.otf", 25);
}
