//Elementos de la GUI: botones, desplegables,

//Botones por pantallas

//Botones MenuPrincipal
Boton             bAtras, bEditarAgua;

BotonImagen       biAtras, biIconoAlimentacion, biIconoHidratacion, biIconoActividad,
                  biIconoVaso1, biIconoVaso2, biIconoVaso3, biIconoVaso4;
            
BotonImagenFondo  bifIconoPerfil, bifIconoPerfil2, bifIconoAnadir, bifIconoCrear;

Diagrama          CPG, Deportes, AguaHorario;

Diagrama2         CalIng, CalQue, MlBeb;

CampoTexto        CTAnadirManual;

//Creación elementos GUI
void setGUI(){

  iniciaBotones();
  iniciaDiagramas();

}


void iniciaBotones () {
  bAtras = new Boton (bAtrasT,  bAtrasX, bAtrasY, bAtrasW, bAtrasH, 8);
  bEditarAgua = new Boton (bEditarAguaT, bEditarAguaX, bEditarAguaY, bEditarAguaW, bEditarAguaH, 16);
  
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
}

void desactivaTodos(){
  bifIconoPerfil.setEnabled(false);
  biIconoAlimentacion.setEnabled(false);
  biIconoHidratacion.setEnabled(false);
  biIconoActividad.setEnabled(false);
  bAtras.setEnabled(false);
  bifIconoAnadir.setEnabled(false);
  biIconoVaso1.setEnabled(false);
  biIconoVaso2.setEnabled(false);
  biIconoVaso3.setEnabled(false);
  biIconoVaso4.setEnabled(false);
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
  
}

void inicaBotonesAlimentacionRegistro () {
}

void inicaBotonesAlimentacionRecetas () {
}

void inicaBotonesActividadRegistro () {
}

void inicaBotonesActividadRutinas () {
}

void inicaBotonesAjustes () {
}


void iniciaDiagramas (){
  CPG = new Diagrama (CPGX, CPGY, CPGR, 12);
  Deportes = new Diagrama (DeportesX, DeportesY, DeportesR, 10);
  AguaHorario = new Diagrama (AguaHorarioX, AguaHorarioY, AguaHorarioR, 10);
  
  CalIng = new Diagrama2 (CalIngX, CalIngY, CalIngR);
  CalQue = new Diagrama2 (CalQueX, CalQueY, CalQueR);
  MlBeb = new Diagrama2 (MlBebX, MlBebY, MlBebR);
}
