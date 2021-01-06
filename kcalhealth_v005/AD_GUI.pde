//Elementos de la GUI: botones, desplegables,

//Botones por pantallas

//Botones MenuPrincipal
Boton             bAtras, bEditarAgua, bHecho, bDesayuno, bManana, bAlmuerzo,
                  bMerienda, bCena, bNoche;

BotonImagen       biAtras, biIconoAlimentacion, biIconoHidratacion, biIconoActividad,
                  biIconoVaso1, biIconoVaso2, biIconoVaso3, biIconoVaso4;
            
BotonImagenFondo  bifIconoPerfil, bifIconoPerfil2, bifIconoAnadir, bifIconoCrear;

Diagrama          CPG, Deportes, AguaHorario, Al1, Al2, Al3, Al4, Al5, Al6, Al7, Ac1, Ac2, Ac3, Ac4, Ac5, Ac6, Ac7, Hi1, Hi2, Hi3, Hi4, Hi5, Hi6, Hi7;

Diagrama2         CalIng, CalQue, MlBeb;

CampoTexto        CTAnadirManual, CTBuscarItems, CTCantidadItems;

Select            sMedidaItem;

//Creación elementos GUI
void setGUI(){
  iniciaBotones();
  iniciaDiagramas();
}


void iniciaBotones () {
  bAtras = new Boton (bAtrasT,  bAtrasX, bAtrasY, bAtrasW, bAtrasH, 10);
  bHecho = new Boton (bHechoT,  bAtrasX, bAtrasY, bAtrasW, bAtrasH, 10);
  bEditarAgua = new Boton (bEditarAguaT, bEditarAguaX, bEditarAguaY, bEditarAguaW, bEditarAguaH, 16);
  bDesayuno = new Boton (bDesayunoT,  bDesayunoX, bDesayunoY, bDesayunoW, bDesayunoH, 12);
  bManana = new Boton (bMananaT,  bMananaX, bMananaY, bMananaW, bMananaH, 12);
  bAlmuerzo = new Boton (bAlmuerzoT,  bAlmuerzoX, bAlmuerzoY, bAlmuerzoW, bAlmuerzoH, 12);
  bMerienda = new Boton (bMeriendaT,  bMeriendaX, bMeriendaY, bMeriendaW, bMeriendaH, 12);
  bCena = new Boton (bCenaT, bCenaX, bCenaY, bCenaW, bCenaH, 12);
  bNoche = new Boton (bNocheT, bNocheX, bNocheY, bNocheW, bNocheH, 12);
  
  biIconoAlimentacion = new BotonImagen (imgIconoAlimentacion, IconoAlimentacionX, IconoAlimentacionY, IconoAlimentacionW, IconoAlimentacionH);
  biIconoHidratacion = new BotonImagen (imgIconoHidratacion, IconoHidratacionX, IconoHidratacionY, IconoHidratacionW, IconoHidratacionH);
  biIconoActividad = new BotonImagen (imgIconoActividad, IconoActividadX, IconoActividadY, IconoActividadW, IconoActividadH);
  biIconoVaso1 = new BotonImagen (imgIconoVaso, VasoX, Vaso1Y, VasoW, VasoH);
  biIconoVaso2 = new BotonImagen (imgIconoVaso, VasoX, Vaso2Y, VasoW, VasoH);
  biIconoVaso3 = new BotonImagen (imgIconoVaso, VasoX, Vaso3Y, VasoW, VasoH);
  biIconoVaso4 = new BotonImagen (imgIconoVaso, VasoX, Vaso4Y, VasoW, VasoH);

  bifIconoAnadir = new BotonImagenFondo (imgIconoAnadir, AnadirItemX + (AnadirItemW/2), AnadirItemY + (AnadirItemH/2), AnadirItemIconoW, AnadirItemIconoH, AnadirItemW, AnadirItemH);
  bifIconoCrear = new BotonImagenFondo (imgIconoAnadir, CrearItemX + (CrearItemW/2), CrearItemY + (CrearItemH/2), CrearItemIconoW, CrearItemIconoH, CrearItemW, CrearItemH);
  bifIconoPerfil = new BotonImagenFondo (imgIconoPerfil, Perfil1X, Perfil1Y, Perfil1W, Perfil1H, Perfil1W, Perfil1H);
  bifIconoPerfil2 = new BotonImagenFondo (imgIconoPerfil, Perfil2X, Perfil2Y, Perfil2W, Perfil2H, Perfil2W, Perfil2H);
  
  CTAnadirManual = new CampoTexto (AnadirManualX, AnadirManualY, AnadirManualW, AnadirManualH);
  CTBuscarItems = new CampoTexto (CTBuscarItemsX, CTBuscarItemsY, CTBuscarItemsW, CTBuscarItemsH);
  CTCantidadItems = new CampoTexto (CTCantidadItemsX, CTCantidadItemsY, CTCantidadItemsW, CTCantidadItemsH);
  
  sMedidaItem = new Select (sMedidaItemA, sMedidaItemX, sMedidaItemY, sMedidaItemW, sMedidaItemH);
}

void iniciaDiagramas (){
  CPG = new Diagrama (CPGX, CPGY, CPGR, 12);
  Al1 = new Diagrama (Al1X, Al1Y, Al1R, 0.000000001);
  Al2 = new Diagrama (Al2X, Al2Y, Al2R, 0.000000001);
  Al3 = new Diagrama (Al3X, Al3Y, Al3R, 0.000000001);
  Al4 = new Diagrama (Al4X, Al4Y, Al4R, 0.000000001);
  Al5 = new Diagrama (Al5X, Al5Y, Al5R, 0.000000001);
  Al6 = new Diagrama (Al6X, Al6Y, Al6R, 0.000000001);
  Al7 = new Diagrama (Al7X, Al7Y, Al7R, 0.000000001);
  Deportes = new Diagrama (DeportesX, DeportesY, DeportesR, 10);
  AguaHorario = new Diagrama (AguaHorarioX, AguaHorarioY, AguaHorarioR, 10);
  
  CalIng = new Diagrama2 (CalIngX, CalIngY, CalIngR);
  CalQue = new Diagrama2 (CalQueX, CalQueY, CalQueR);
  MlBeb = new Diagrama2 (MlBebX, MlBebY, MlBebR);
}

void desactivaTodos(){
  bAtras.setEnabled(false);
  bEditarAgua.setEnabled(false);
  bDesayuno.setEnabled(false);
  bManana.setEnabled(false);
  bAlmuerzo.setEnabled(false);
  bMerienda.setEnabled(false);
  bCena.setEnabled(false);
  bNoche.setEnabled(false);
  
  biIconoAlimentacion.setEnabled(false);
  biIconoHidratacion.setEnabled(false);
  biIconoActividad.setEnabled(false);
  biIconoVaso1.setEnabled(false);
  biIconoVaso2.setEnabled(false);
  biIconoVaso3.setEnabled(false);
  biIconoVaso4.setEnabled(false);
  
  bifIconoPerfil.setEnabled(false);
  bifIconoPerfil2.setEnabled(false);
  bifIconoAnadir.setEnabled(false);
  bifIconoCrear.setEnabled(false);
  
  CTAnadirManual.setEnabled(false);
  CTBuscarItems.setEnabled(false);
  CTCantidadItems.setEnabled(false);
}

void activaBotonesMenuPrincipal() {
  bifIconoPerfil.setEnabled(true);
  biIconoAlimentacion.setEnabled(true);
  biIconoHidratacion.setEnabled(true);
  biIconoActividad.setEnabled(true);
}

void activaBotonesMenuAlimentacion () {
  bifIconoPerfil2.setEnabled(true);
  bAtras.setEnabled(true);
  bifIconoAnadir.setEnabled(true);
  bifIconoCrear.setEnabled(true);  
}

void activaBotonesMenuActividad () {
  bifIconoPerfil2.setEnabled(true);
  bAtras.setEnabled(true);
  bifIconoAnadir.setEnabled(true);
}

void activaBotonesMenuHidratacion () {
  bifIconoPerfil2.setEnabled(true);
  bAtras.setEnabled(true);
  biIconoVaso1.setEnabled(true);
  biIconoVaso2.setEnabled(true);
  biIconoVaso3.setEnabled(true);
  biIconoVaso4.setEnabled(true);  
  CTCantidadItems.setEnabled(true);
}

void activaBotonesAlimentacionRegistro () {
  bifIconoPerfil2.setEnabled(true);
  bHecho.setEnabled(true);
  CTBuscarItems.setEnabled(true);
  CTCantidadItems.setEnabled(true);
  bDesayuno.setEnabled(true);
  bManana.setEnabled(true);
  bAlmuerzo.setEnabled(true);
  bMerienda.setEnabled(true);
  bCena.setEnabled(true);
  bNoche.setEnabled(true);
}

void activaBotonesAlimentacionRecetas () {
  bifIconoPerfil2.setEnabled(true);
  bHecho.setEnabled(true);
  CTBuscarItems.setEnabled(true);
}

void activaBotonesActividadRegistro () {
  bifIconoPerfil2.setEnabled(true);
  bHecho.setEnabled(true);  
  CTBuscarItems.setEnabled(true);
}

void activaBotonesActividadRutinas () {
  bifIconoPerfil2.setEnabled(true);
  bHecho.setEnabled(true);  
  CTBuscarItems.setEnabled(true);
}

void activaBotonesAjustes () {
}
