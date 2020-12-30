
//MENU GENERAL//
void dibujaLogo1 (){
  fill (255,255,255); noStroke();
  rect (Logo1X, Logo1Y, Logo1W, Logo1H, 8);
  imageMode(CORNER);
  image (imgLogo, Logo1X, Logo1Y, Logo1W, Logo1H); 
}

void dibujaIconoPerfil (){  
 // fill (255,255,255); noStroke();
//  rect ( width - margenX - 100, margenY, Perfil1W, Perfil1H, 8);
  bifIconoPerfil.display();
} 
  
  
void dibujaBloqueDestacados (){
   noStroke (); fill (255,255,255);  
   rect (BloqueDestacadosX, BloqueDestacadosY, BloqueDestacadosW, BloqueDestacadosH, 8);
}

//COMUNES//
void dibujaLogo2 (){
  fill (255,255,255); noStroke();
  rect (Logo2X, Logo2Y, Logo2W, Logo2H, 8);
  imageMode(CORNER);
  image (imgLogo, Logo2X, Logo2Y, Logo2W, Logo2H);
}

void dibujaIconoPerfil2 (){  
  fill (255,255,255); noStroke();
  rect ( width - margenX - 80, margenY, Perfil2W, Perfil2H, 8);
  bifIconoPerfil2.display();
} 

void dibujaIconoApartado (){
  PImage iconoapartado;
  switch (pantalla){
    case MENUALIMENTACION : iconoapartado = imgIconoAlimentacion; break;
    case MENUACTIVIDAD : iconoapartado = imgIconoHidratacion; break;
    case MENUHIDRATACION : iconoapartado = imgIconoActividad; break; 
  }
  //image (iconoapartado, 2*margenX + Logo2W, margenY, 100, 100);
  
}


//ALIMENTACON y ACTIVIDAD//
void dibujaPlantillaAlimentacion(){
  rect (ResuDiaX, ResuDiaY, ResuDiaW, ResuDiaH, 8);
  rect (InfoDiaX, InfoDiaY, InfoDiaW, ResuDiaH, 8);
  rect (GrafAlimeX, GrafAlimeY, GrafAlimeW, GrafAlimeH, 8);
  rect (ResuSemanalX, ResuSemanalY, ResuSemanalW, ResuSemanalH, 8);
}


//hidratacion

void dibujaPlantillaHidratacion (){
  noStroke();
  fill (255,255,255);
  rect (AnadirAguaX, AnadirAguaY, AnadirAguaW, AnadirAguaH,8);
  rect (EditarAguaX, EditarAguaY, EditarAguaW, EditarAguaH, 8);
  
  pushStyle();
  fill (105, 109, 125);
  circle (OKAnadirManualX, OKAnadirManualY, OKAnadirManualR);
  noFill (); stroke (105, 109, 125);
  rect (AnadirManualX, AnadirManualY, AnadirManualW, AnadirManualH, 8);
  popStyle();
  
  biIconoVaso1.display ();
  pushStyle();
  fill(105, 109, 125);
  textAlign (CENTER);
  text("250ml", VasoTextoX, VasoTexto1Y);
  
  biIconoVaso2.display ();
  textAlign (CENTER);
  text("500ml", VasoTextoX, VasoTexto2Y);
  
  biIconoVaso3.display ();
  textAlign (CENTER);
  text("1000ml", VasoTextoX, VasoTexto3Y);
  
  biIconoVaso4.display ();
  textAlign (CENTER);
  text("1500ml", VasoTextoX, VasoTexto4Y);
  popStyle();
  
}
