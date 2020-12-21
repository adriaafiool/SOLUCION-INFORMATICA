//Elementos de la GUI: botones, desplegables,

//Botones por pantallas

//Botones MenuPrincipal
Boton bAjustes, bAlimentacion, bHidratacion, bActividad;
BotonImagen biIconoAlimentacion, biIconoHidratacion, biIconoActividad, biIconoPerfil;

//Creación elementos GUI
void setGUI(){
  switch (pantalla) {
    case MENUPRINCIPAL : inicaBotonesMenuPrincipal (); break;
    case MENUALIMENTACION : inicaBotonesMenuAlimentacion (); break;
    case MENUACTIVIDAD : inicaBotonesMenuActividad (); break;
    case MENUHIDRATACION : inicaBotonesMenuHidratacion (); break;
    case ALIMENTACIONREGISTRO : inicaBotonesAlimentacionRegistro (); break;
    case ALIMENTACIONRECETAS : inicaBotonesAlimentacionRecetas (); break;
    case ACTIVIDADREGISTRO : inicaBotonesActividadRegistro (); break;
    case ACTIVIDADRUTINAS : inicaBotonesActividadRutinas (); break;
    case AJUSTES : inicaBotonesAjustes (); break;
  }
}


void inicaBotonesMenuPrincipal () {
  biIconoPerfil = new BotonImagen (imgIconoPerfil, width - margenX - 100, margenY, 100, 50);
  biIconoAlimentacion = new BotonImagen (imgIconoAlimentacion, margenX, BotonImagenMPY, BotonImagenMPW, BotonImagenMPH);
  biIconoHidratacion = new BotonImagen (imgIconoHidratacion, 2*margenX + BotonImagenMPW, BotonImagenMPY, BotonImagenMPW, BotonImagenMPH);
  biIconoActividad = new BotonImagen (imgIconoActividad, 3*margenX + 2*BotonImagenMPW, BotonImagenMPY, BotonImagenMPW, BotonImagenMPH);
}

void inicaBotonesMenuAlimentacion () {
}

void inicaBotonesMenuActividad () {
}

void inicaBotonesMenuHidratacion () {
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
  bAjustes.setEnabled(true);
}
