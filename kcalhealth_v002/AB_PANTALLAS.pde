//Funciones de dibujo de las diferentes pantallas

void dibujaPantallaMenuPrincipal (){
  image (imgFondoPrincipal, 0, 0, width, height);
  dibujaLogo1 ();
  biIconoPerfil.display();
  biIconoAlimentacion.display();
  biIconoHidratacion.display();
  biIconoActividad.display ();
  //dibujaResumenGeneral ();
  dibujaBloqueDestacados ();
}

void dibujaPantallaMenuAlimentacion (){
  image (imgFondoAlimentacion, 0, 0, width, height);
  biAtras.display();
  dibujaLogo2 ();
  biIconoPerfil.display();
  dibujaIconoApartado ();
  biIconoPerfil.display();
  dibujaAnadirItem ();
  dibujaCrearItem ();
  dibujaResumenDia ();
  dibujaInfoDia ();
  dibujaResumenSemanal ();
}

void dibujaPantallaMenuActividad (){
  image (imgFondoActividad, 0, 0, width, height);
  biAtras.display();
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
  biAtras.display();
  dibujaLogo2 ();
  biIconoPerfil.display();
  
  biIconoVaso1.display ();
  textAlign (CENTER);
  text("250ml",90, 230);
  
  biIconoVaso2.display ();
  textAlign (CENTER);
  text("500ml",90, 230+2*margenY+80);
  
  biIconoVaso3.display ();
  textAlign (CENTER);
  text("1000ml",90, 250+4*margenY+2*80);
  
  biIconoVaso4.display ();
  textAlign (CENTER);
  text("1500ml",90, 270+12*margenY);
  
  
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
