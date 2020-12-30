//Funciones de dibujo de las diferentes pantallas

void dibujaPantallaMenuPrincipal (){
  image (imgFondoPrincipal, 0, 0, width, height);
  dibujaLogo1 ();
  dibujaIconoPerfil ();
  biIconoPerfil.display();
  
  fill (255,255,255); noStroke();
  
  biIconoAlimentacion.display();
  fill (220, 247, 99); textAlign (CORNER); textFont(fuente2);
  text("ALIMENTACION", IconoAlimentacionX + 30, IconoAlimentacionY  + IconoAlimentacionH);
  
  biIconoHidratacion.display();
  fill (122, 225, 225); textAlign (CORNER); textFont(fuente2);
  text("HIDRATACION", IconoHidratacionX + 40, IconoHidratacionY  + IconoHidratacionH);
  
  biIconoActividad.display ();
  fill (255, 140, 66); textAlign (CORNER); textFont(fuente2);
  text("ACTIVIDAD", IconoActividadX + 50, IconoActividadY  + IconoActividadH - 15);
}

void dibujaPantallaMenuAlimentacion (){
  image (imgFondoAlimentacion, 0, 0, width, height);
  dibujaLogo2 ();
  dibujaIconoPerfil();
  
  bAtras.display();
  dibujaIconoApartado ();
  
  dibujaAnadirItem ();
  dibujaCrearItem ();
  dibujaResumenDia ();
  dibujaInfoDia ();
  dibujaResumenSemanal ();
}

void dibujaPantallaMenuActividad (){
  image (imgFondoActividad, 0, 0, width, height);
  bAtras.display();
  dibujaLogo2 ();
  biIconoPerfil.display();
  biIconoAnadir.display();
  
  //dibujaIconoApartado ();
//  dibujaAnadirItem ();
//  dibujaCrearItem ();
//  dibujaResumenDia ();
//  dibujaInfoDia ();
  //dibujaResumenSemanal ();
}

void dibujaPantallaMenuHidratacion (){
  image (imgFondoHidratacion, 0, 0, width, height);
  bAtras.display();
  dibujaLogo2 ();
  biIconoPerfil.display();
  dibujaAnadirAgua ();
  
  biIconoVaso1.display ();
  textAlign (CENTER);
  text("250ml",90, 230);
  
  biIconoVaso2.display ();
  textAlign (CENTER);
  text("500ml",90, 230+margenY+80);
  
  biIconoVaso3.display ();
  textAlign (CENTER);
  text("1000ml",90, 250+2*margenY+2*80);
  
  biIconoVaso4.display ();
  textAlign (CENTER);
  text("1500ml",90, 270+3*margenY);
  
  
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
