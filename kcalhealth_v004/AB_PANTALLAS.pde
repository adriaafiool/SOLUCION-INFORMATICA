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
  
  CPG.setTexts (CPGT);
  CPG.setValues (CPGV);
  CPG.setColors (CPGC);
  CPG.display();
  
  CalIng.setTexts (CalIngT);
  CalIng.setValues (CalIngV);
  CalIng.setColors (CalIngC);
  CalIng.display();  
  
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
  
  Deportes.setTexts (DeportesT);
  Deportes.setValues (DeportesV);
  Deportes.setColors (DeportesC);
  Deportes.display();
  
  CalQue.setTexts (CalQueT);
  CalQue.setValues (CalQueV);
  CalQue.setColors (CalQueC);
  CalQue.display();  
  
}

void dibujaPantallaMenuHidratacion (){
  imageMode(CORNER);
  image (imgFondoHidratacion, 0, 0, width, height);
  dibujaLogo2 ();
  bifIconoPerfil2.display();
  
  bAtras.display();
  dibujaIconoApartado ();
  
  dibujaPlantillaHidratacion ();
  CTAnadirManual.display();
  
  dibujaPlantillaAlimentacion();
  
  MlBeb.setTexts (MlBebT);
  MlBeb.setValues (MlBebV);
  MlBeb.setColors (MlBebC);
  MlBeb.display();
  
  AguaHorario.setTexts (AguaHorarioT);
  AguaHorario.setValues (AguaHorarioV);
  AguaHorario.setColors (AguaHorarioC);
  AguaHorario.display();
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
