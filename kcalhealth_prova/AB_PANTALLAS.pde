//Funciones de dibujo de las diferentes pantallas

void dibujaPantallaMenuPrincipal (){
  imageMode(CORNER);
  image (imgFondoPrincipal, 0, 0, width, height);
  dibujaLogo1 ();
  dibujaIconoPerfil ();
  bifIconoPerfil.display();
  
  fill (255,255,255); noStroke();
  rect (FondoIconosX, FondoIconosY, FondoIconosW, FondoIconosH, 8);
  
  biIconoAlimentacion.display();;  fill (220, 247, 99); textAlign (CENTER); textFont(fuente2); textSize (15);
  text("ALIMENTACION", TextoAlimentacionX, TextoAlimentacionY);
  
  biIconoHidratacion.display();
  fill (122, 225, 225); textAlign (CENTER); textFont(fuente2); textSize (15);
  text("HIDRATACION", TextoHidratacionX, TextoHidratacionY);
  
  biIconoActividad.display ();
  fill (255, 140, 66); textAlign (CENTER); textFont(fuente2); textSize (15);
  text("ACTIVIDAD", TextoActividadX, TextoActividadY);
  
  dibujaBloqueDestacados ();
}

void dibujaPantallaMenuAlimentacion (){
  imageMode(CORNER);
  image (imgFondoAlimentacion, 0, 0, width, height);
  dibujaLogo2 ();
  bifIconoPerfil2.display();
  
  bAtras.display();
  dibujaIconoApartado ();
  
  bifIconoAnadir.display ();
  bifIconoCrear.display ();
  
  dibujaPlantillaAlimentacion();
}

void dibujaPantallaMenuActividad (){
  imageMode(CORNER);  
  image (imgFondoActividad, 0, 0, width, height);
  dibujaLogo2 ();
  bifIconoPerfil2.display();
  
  bAtras.display();
  dibujaIconoApartado ();
  
  bifIconoAnadir.display ();
  bifIconoCrear.display ();
  
  dibujaPlantillaAlimentacion();
}

void dibujaPantallaMenuHidratacion (){
  imageMode(CORNER);
  image (imgFondoHidratacion, 0, 0, width, height);
  dibujaLogo2 ();
  bifIconoPerfil2.display();
  
  bAtras.display();
  dibujaIconoApartado ();
  
  dibujaPlantillaHidratacion ();
  dibujaPlantillaAlimentacion();
}

void dibujaPantallaAlimentacionRegistro (){
  
}

void dibujaPantallaAlimentacionRecetas (){
  
}

void dibujaPantallaActividadRegistro (){
  
}

void dibujaPantallaActividadRutinas (){
  
}

void dibujaPantallaAjustes (){
  
}
