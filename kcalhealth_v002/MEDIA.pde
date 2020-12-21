PImage imgFondoPrincipal, imgFondoAlimentacion, imgFondoHidratacion, imgFondoActividad, imgLogo, imgIconoAlimentacion, 
       imgIconoHidratacion, imgIconoActividad, imgIconoPerfil, imgIconoAtras, imgIconoAnadir, imgIconoVaso;

PFont fuente1;

void cargarMedia (){
  cargarImagenes();
  cargarFuentes();
}

void cargarImagenes (){
  
  //imagenes FONDOS
  imgFondoPrincipal = loadImage("../imagenes/fondoprincipal.jpg");
  imgFondoAlimentacion = loadImage("../imagenes/fondoalimentacion1.jpg");
  imgFondoActividad = loadImage("../imagenes/fondoactividad1.jpg");
  imgFondoHidratacion = loadImage("../imagenes/fondohidratacion1.jpg");
  
  //imagenes COMUNES
  imgLogo = loadImage("../imagenes/logo2.png");
  imgIconoAlimentacion = loadImage("../imagenes/iconoalimentacion.png");
  imgIconoHidratacion = loadImage ("../imagenes/iconohidratacion.png");
  imgIconoActividad = loadImage ("../imagenes/iconoactividad.png");
  imgIconoPerfil = loadImage ("../imagenes/iconoperfil.png");
  imgIconoAtras = loadImage ("../imagenes/iconoatras.png");
  imgIconoAnadir = loadImage ("../imagenes/iconoanadir.png");
  
  //imagenes ESPECIFICAS
  imgIconoVaso = loadImage ("../imagenes/iconovaso.png");
  
  

  }
  
void cargarFuentes (){
  fuente1 = createFont ("../TIPOGRAFIES/fuente1.otf", 25);
}
