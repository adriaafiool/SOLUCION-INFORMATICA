//Elementos de la GUI: botones, desplegables,

//Botones por pantallas

//Botones MenuPrincipal
Boton  bAtras;
BotonImagen biAtras, biIconoAlimentacion, biIconoHidratacion, biIconoActividad, biIconoPerfil, biIconoAnadir,
            biIconoVaso1, biIconoVaso2, biIconoVaso3, biIconoVaso4;

//Creación elementos GUI
void setGUI(){

  iniciaBotones();

}


void iniciaBotones () {
  biIconoPerfil = new BotonImagen (imgIconoPerfil, width - margenX - 100, margenY, Perfil1W, Perfil1H);
  biIconoAlimentacion = new BotonImagen (imgIconoAlimentacion, IconoAlimentacionX, IconoAlimentacionY, IconoAlimentacionW, IconoAlimentacionH);
  biIconoHidratacion = new BotonImagen (imgIconoHidratacion, IconoHidratacionX, IconoHidratacionY, IconoHidratacionW, IconoHidratacionH);
  biIconoActividad = new BotonImagen (imgIconoActividad, IconoActividadX, IconoActividadY, IconoActividadW, IconoActividadH);
 // biAtras = new BotonImagen (imgIconoAtras, margenX, 0.75*margenY + Logo2H, biAtrasW, biAtrasH);
  bAtras = new Boton ("ATRAS",  margenX, 0.75*margenY + Logo2H, biAtrasW, biAtrasH//, 105, 109, 125
  );
  biIconoAnadir = new BotonImagen (imgIconoAnadir, 1.5*margenX, 1.5*margenY + Logo1H, 50, 50);
  biIconoVaso1 = new BotonImagen (imgIconoVaso, 1.25*margenX, margenY+Perfil1H, 60, 70);
  biIconoVaso2 = new BotonImagen (imgIconoVaso, 1.25*margenX, 1.75*margenY+Perfil1H+80, 60, 70);
  biIconoVaso3 = new BotonImagen (imgIconoVaso, 1.25*margenX, 2.5*margenY+Perfil1H+2*80, 60, 70);
  biIconoVaso4 = new BotonImagen (imgIconoVaso, 1.25*margenX, 3.25*margenY+Perfil1H+3*80, 60, 70);
}

void desactivaTodos(){
  biIconoPerfil.setEnabled(false);
  biIconoAlimentacion.setEnabled(false);
  biIconoHidratacion.setEnabled(false);
  biIconoActividad.setEnabled(false);
//  biAtras.setEnabled(false);
  biIconoAnadir.setEnabled(false);
  biIconoVaso1.setEnabled(false);
  biIconoVaso2.setEnabled(false);
  biIconoVaso3.setEnabled(false);
  biIconoVaso4.setEnabled(false);
}

void activaBotonesMenuPrincipal() {
  biIconoPerfil.setEnabled(true);
  biIconoAlimentacion.setEnabled(true);
  biIconoHidratacion.setEnabled(true);
  biIconoActividad.setEnabled(true);
}

void activaBotonesMenuAlimentacion () {
  biIconoPerfil.setEnabled(true);
  //biAtras.setEnabled(true);
  biIconoAnadir.setEnabled(true);
}

void activaBotonesMenuActividad () {
  biIconoPerfil.setEnabled(true);
  bAtras.setEnabled(true);
  biIconoAnadir.setEnabled(true);

}

void activaBotonesMenuHidratacion () {
  biIconoPerfil.setEnabled(true);
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



void activaBotones(){
  bAtras.setEnabled(true);
}
