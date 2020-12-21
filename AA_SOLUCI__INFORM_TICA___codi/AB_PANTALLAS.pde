//Funciones de dibujo de las diferentes pantallas

void dibujaPantallaMenuPrincipal (){
  dibujaLogo1 ();
  bAjustes.display();
  biIconoAlimentacion.display();
  biIconoHidratacion.display();
  //dibujaResumenGeneral ();
  dibujaBloqueDestacados ();
}

void dibujaPantallaMenuAlimentacion (){
  image (imgFondo, 0, 0, width, height);
  dibujaLogo2 ();
  dibujaPerfil2 ();
  dibujaIconoApartado ();
  dibujaFlechaRegreso ();
  dibujaAnadirItem ();
  dibujaCrearItem ();
  dibujaResumenDia ();
  dibujaInfoDia ();
  dibujaResumenSemanal ();
}

void dibujaPantallaMenuActividad (){
  
}

void dibujaPantallaMenuHidratacion (){
  
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
