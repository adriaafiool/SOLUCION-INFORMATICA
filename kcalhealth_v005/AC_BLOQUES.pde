
//MENU GENERAL//
void dibujaLogo1 (){
  fill (255,255,255); noStroke();
  rect (Logo1X, Logo1Y, Logo1W, Logo1H, 8);
  imageMode(CORNER);
  image (imgLogo, Logo1X, Logo1Y, Logo1W, Logo1H); 
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
    case MENUALIMENTACION :     iconoapartado = imgIconoAlimentacion;  break;
    case MENUACTIVIDAD :        iconoapartado = imgIconoActividad;     break;
    case MENUHIDRATACION :      iconoapartado = imgIconoHidratacion;   break; 
    case ALIMENTACIONREGISTRO : iconoapartado = imgIconoAlimentacion;  break;
    case ALIMENTACIONRECETAS :  iconoapartado = imgIconoAlimentacion;  break;
    case ACTIVIDADREGISTRO :    iconoapartado = imgIconoActividad;     break; 
    case ACTIVIDADRUTINAS :     iconoapartado = imgIconoActividad;     break; 
    case AJUSTES :              iconoapartado = imgIconoPerfil;        break; 
    default:                    iconoapartado = imgIconoHidratacion;   break;
  }
  rect (IconoApartadoX, IconoApartadoY, IconoApartadoW, IconoApartadoH, 8);
  image (iconoapartado, IconoApartadoX, IconoApartadoY, IconoApartadoW, IconoApartadoH);
  
}


//ALIMENTACON y ACTIVIDAD//
void dibujaPlantillaAlimentacion(){
  rect (ResuDiaX, ResuDiaY, ResuDiaW, ResuDiaH, 8);
  rect (InfoDiaX, InfoDiaY, InfoDiaW, ResuDiaH, 8);
  rect (GrafAlimeX, GrafAlimeY, GrafAlimeW, GrafAlimeH, 8);
  rect (ResuSemanalX, ResuSemanalY, ResuSemanalW, ResuSemanalH, 8);
  rect (MediaSemanalX, MediaSemanalY, MediaSemanalW, MediaSemanalH, 8);
}


//HIDRATACION//

void dibujaPlantillaHidratacion (){
  noStroke();
  fill (255,255,255);
  rect (AnadirAguaX, AnadirAguaY, AnadirAguaW, AnadirAguaH,8);
  bEditarAgua.display();
  
  pushStyle();
  fill (105, 109, 125);
  circle (OKAnadirManualX, OKAnadirManualY, OKAnadirManualR);
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


//REGISTRO//
void dibujamodeloregistro (){
  rect (BuscarItemsX, BuscarItemsY, BuscarItemsW, BuscarItemsH, 8);
  rect (AjustarItemsX, AjustarItemsY, AjustarItemsW, AjustarItemsH, 8);
  CTBuscarItems.display();
  fill (0,0,0); textFont (fuente1); textAlign (CORNER); textSize (15);
  text ("FECHA", FechaX, FechaY);
  pushStyle(); textSize (20); text ("ITEM", NombreItX, NombreItY); popStyle();
}

void dibujaRegistroAlimentacion (){
  fill (0,0,0); textFont (fuente1); textAlign (CORNER); textSize (15); 
  text ("TAMAÑO DE LA PORCIÓN", TaPorX, TaPorY);
  text ("HORA", HoraX, HoraY);
  text ("PRODUCTOS RECOMENDADOS...", PRecX, PRecY);
  CTCantidadItems.display ();
  sMedidaItem.display();
  fill (236, 237, 239); rect (CaloriasItemX, CaloriasItemY, CaloriasItemW, CaloriasItemH, 8);
  bDesayuno.display(); bManana.display(); bAlmuerzo.display(); bMerienda.display(); bCena.display(); bNoche.display();
}
