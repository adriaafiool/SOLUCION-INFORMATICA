//Funciones de dibujo de las diferentes pantallas

void dibujaPantallaMenuPrincipal (){
  imageMode(CORNER);
  image (imgFondoPrincipal, 0, 0, width, height);
  dibujaLogo1 ();
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
  
  Al1.setTexts (CPGT);
  Al1.setValues (CPGV);
  Al1.setColors (CPGC);
  Al1.display();  
  
  Al2.setTexts (CPGT);
  Al2.setValues (CPGV);
  Al2.setColors (CPGC);
  Al2.display();  
  
  Al3.setTexts (CPGT);
  Al3.setValues (CPGV);
  Al3.setColors (CPGC);
  Al3.display();  
  
  Al4.setTexts (CPGT);
  Al4.setValues (CPGV);
  Al4.setColors (CPGC);
  Al4.display();  
  
  Al5.setTexts (CPGT);
  Al5.setValues (CPGV);
  Al5.setColors (CPGC);
  Al5.display();  
  
  Al6.setTexts (CPGT);
  Al6.setValues (CPGV);
  Al6.setColors (CPGC);
  Al6.display();  
  
  Al7.setTexts (CPGT);
  Al7.setValues (CPGV);
  Al7.setColors (CPGC);
  Al7.display();  
  
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
  
  Al1.setTexts (DeportesT);
  Al1.setValues (DeportesV);
  Al1.setColors (DeportesC);
  Al1.display();  
  
  Al2.setTexts (DeportesT);
  Al2.setValues (DeportesV);
  Al2.setColors (DeportesC);
  Al2.display();  
  
  Al3.setTexts (DeportesT);
  Al3.setValues (DeportesV);
  Al3.setColors (DeportesC);
  Al3.display();  
  
  Al4.setTexts (DeportesT);
  Al4.setValues (DeportesV);
  Al4.setColors (DeportesC);
  Al4.display();  
  
  Al5.setTexts (DeportesT);
  Al5.setValues (DeportesV);
  Al5.setColors (DeportesC);
  Al5.display();  
  
  Al6.setTexts (DeportesT);
  Al6.setValues (DeportesV);
  Al6.setColors (DeportesC);
  Al6.display();  
  
  Al7.setTexts (DeportesT);
  Al7.setValues (DeportesV);
  Al7.setColors (DeportesC);
  Al7.display();  
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
  
  Al1.setTexts (AguaHorarioT);
  Al1.setValues (AguaHorarioV);
  Al1.setColors (AguaHorarioC);
  Al1.display();  
  
  Al2.setTexts (AguaHorarioT);
  Al2.setValues (AguaHorarioV);
  Al2.setColors (AguaHorarioC);
  Al2.display();  
  
  Al3.setTexts (AguaHorarioT);
  Al3.setValues (AguaHorarioV);
  Al3.setColors (AguaHorarioC);
  Al3.display();  
  
  Al4.setTexts (AguaHorarioT);
  Al4.setValues (AguaHorarioV);
  Al4.setColors (AguaHorarioC);
  Al4.display();  
  
  Al5.setTexts (AguaHorarioT);
  Al5.setValues (AguaHorarioV);
  Al5.setColors (AguaHorarioC);
  Al5.display();  
  
  Al6.setTexts (AguaHorarioT);
  Al6.setValues (AguaHorarioV);
  Al6.setColors (AguaHorarioC);
  Al6.display();  
  
  Al7.setTexts (AguaHorarioT);
  Al7.setValues (AguaHorarioV);
  Al7.setColors (AguaHorarioC);
  Al7.display();  
}

void dibujaPantallaAlimentacionRegistro (){
  imageMode(CORNER);
  image (imgFondoAlimentacion, 0, 0, width, height);
  dibujaLogo2 ();
  bifIconoPerfil2.display();
  
  bHecho.display();
  dibujaIconoApartado ();
  
  dibujaModeloSubpantallas ();
  dibujaModeloRegistro ();
  dibujaRegistroAlimentacion ();
  bRegistrar.display();
} 
void dibujaPantallaAlimentacionRecetas (){
  imageMode(CORNER);
  image (imgFondoAlimentacion, 0, 0, width, height);
  dibujaLogo2 ();
  bifIconoPerfil2.display();
  
  bHecho.display();
  dibujaIconoApartado ();
  
  dibujaModeloSubpantallas ();
  dibujaRecetasAlimentacion();
}

void dibujaPantallaActividadRegistro (){
  imageMode(CORNER);  
  image (imgFondoActividad, 0, 0, width, height);
  dibujaLogo2 ();
  bifIconoPerfil2.display();
  
  bHecho.display();
  dibujaIconoApartado ();
  
  dibujaModeloSubpantallas();
  dibujaModeloRegistro();
  dibujaRegistroActividad ();
  bRegistrar.display();
}

void dibujaPantallaActividadRutinas (){
  imageMode(CORNER);  
  image (imgFondoActividad, 0, 0, width, height);
  dibujaLogo2 ();
  bifIconoPerfil2.display();
  
  bHecho.display();
  dibujaIconoApartado ();
  

}
void dibujaPantallaAjustes (){
  
}
