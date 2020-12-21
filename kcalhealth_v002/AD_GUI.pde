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
  biIconoAlimentacion = new BotonImagen (imgIconoAlimentacion, margenX, BotonImagenMPY, BotonImagenMPW, BotonImagenMPH);
  biIconoHidratacion = new BotonImagen (imgIconoHidratacion, 3*margenX + BotonImagenMPW, BotonImagenMPY, BotonImagenMPW, BotonImagenMPH);
  biIconoActividad = new BotonImagen (imgIconoActividad, 150, 350, BotonImagenMPW, BotonImagenMPH);
  biAtras = new BotonImagen (imgIconoAtras, margenX, 1.5*margenY + Logo2H, FlechaRegresoW, FlechaRegresoH);
  biIconoAnadir = new BotonImagen (imgIconoAnadir, 3*margenX, 3*margenY + Logo1H, 50, 50);
  biIconoVaso1 = new BotonImagen (imgIconoVaso, 3*margenX, 2*margenY+Perfil1H, 60, 80);
  biIconoVaso2 = new BotonImagen (imgIconoVaso, 3*margenX, 4*margenY+Perfil1H+80, 60, 80);
  biIconoVaso3 = new BotonImagen (imgIconoVaso, 3*margenX, 6*margenY+Perfil1H+2*80, 60, 80);
  biIconoVaso4 = new BotonImagen (imgIconoVaso, 3*margenX, 8*margenY+Perfil1H+3*80, 60, 80);
}

void desactivaTodos(){
  biIconoPerfil.setEnabled(false);
  biIconoAlimentacion.setEnabled(false);
  biIconoHidratacion.setEnabled(false);
  biIconoActividad.setEnabled(false);
  biAtras.setEnabled(false);
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
  biAtras.setEnabled(true);
  biIconoAnadir.setEnabled(true);
}

void activaBotonesMenuActividad () {
  biIconoPerfil.setEnabled(true);
  biAtras.setEnabled(true);
  biIconoAnadir.setEnabled(true);

}

void activaBotonesMenuHidratacion () {
  biIconoPerfil.setEnabled(true);
  biAtras.setEnabled(true);
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
