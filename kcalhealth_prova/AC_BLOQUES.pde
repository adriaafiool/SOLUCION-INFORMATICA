
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
void dibujaModeloSubpantallas (){
  rect (BuscarItemsX, BuscarItemsY, BuscarItemsW, BuscarItemsH, 8);
  rect (AjustarItemsX, AjustarItemsY, AjustarItemsW, AjustarItemsH, 8);
  CTBuscarItems.display();
}

void dibujaModeloRegistro (){
  fill (0,0,0); textFont (fuente1); textAlign (CORNER); textSize (15);
  text ("FECHA", FechaX, FechaY);
  pushStyle(); textSize (20); text ("ITEM", NombreItX, NombreItY); popStyle();
}



void dibujaRegistroAlimentacion (){
  fill (0,0,0); textFont (fuente1); textAlign (CORNER); textSize (15); 
  text ("TAMAÑO DE LA PORCIÓN", TaPorX, TaPorY);
  text ("CALORÍAS TOTALES", CalTotX, CalTotY);
  text ("HORA", HoraX, HoraY);
  text ("PROPIEDADES", PropiedadesX, PropiedadesY);
  text ("PRODUCTOS RECOMENDADOS...", IRecX, IRecY);
  
  CTCantidadItems.display ();
  sMedidaItem.display();
  fill (236, 237, 239); rect (CaloriasItemX, CaloriasItemY, CaloriasItemW, CaloriasItemH, 8);
  
  bDesayuno.display(); bManana.display(); bAlmuerzo.display(); bMerienda.display(); bCena.display(); bNoche.display();
  cDiaRegistro.display();
  
  //tCPG.display(50, 50, tCPGW, tCPGH);   tCPG.setHeaders(headers);  tCPG.setData(info);  tCPG.setColumnWidths(colWidths);
  
  btItemRec1.display(); btItemRec2.display(); btItemRec3.display();
  textAlign (CORNER); textFont (fuente2); textSize(12); 
  text("RED", btItemRec1TX, btItemRec1TY); text("GREEN", btItemRec2TX, btItemRec2TY); text("BLUE", btItemRec3TX, btItemRec3TY);
  CTCantidadItemRec1.display(); CTCantidadItemRec2.display(); CTCantidadItemRec3.display();
  sMedidaItemRec1.display(); sMedidaItemRec2.display();  sMedidaItemRec3.display();
  fill (236, 237, 239); rect (CaloriasItemRec1X, CaloriasItemRec1Y, CaloriasItemRec1W, CaloriasItemRec1H, 8);
  rect (CaloriasItemRec2X, CaloriasItemRec2Y, CaloriasItemRec2W, CaloriasItemRec2H, 8);
  rect (CaloriasItemRec3X, CaloriasItemRec3Y, CaloriasItemRec3W, CaloriasItemRec3H, 8);
}

void dibujaRecetasAlimentacion(){
  fill (0,0,0); textFont (fuente1); textAlign (CORNER); textSize (15);
  pushStyle(); textSize (20); text ("ITEM", NombreItX, NombreItY); popStyle();
  text ("ITEM1", Item1X, Item1Y); text ("ITEM2", Item2X, Item2Y); text ("ITEM3", Item3X, Item3Y); text ("ITEM4", Item4X, Item4Y); text ("ITEM5", Item5X, Item5Y); text ("ITEM6", Item6X, Item6Y); 
}

void dibujaRegistroActividad (){
  fill (0,0,0); textFont (fuente1); textAlign (CORNER); textSize (15);
  text ("EMPIEZA", EmpiezaX, EmpiezaY); text ("DURADA", DuradaX, DuradaY); text ("CALORÍAS QUEMADAS", CalTotQueX, CalTotQueY);
  cDiaRegistroActividad.display();
  CTEmpieza.display(); CTDurada.display(); fill (grisflojo); rect (CaloriasQuemadasX, CaloriasQuemadasY, CaloriasQuemadasW, CaloriasQuemadasH, 8);
}
